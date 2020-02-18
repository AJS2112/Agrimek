(function(){
  'use strict';
  
  angular.module("myApp")
  .controller("projectDetailController", projectDetailController);
  projectDetailController.$inject=[ '$filter', '$rootScope', '$state', '$mdDialog', '$scope', '$http', 'projectsService', 'eventsService'];

  function projectDetailController($filter, $rootScope, $state, $mdDialog, $scope, $http, projectsService, eventsService){
    

    var vm=this;
    vm.listaEventos=[];
    vm.one = {};
    vm.error="";
    vm.full=true;


    var eventoNuevo={
        id:0,
        name:"Evento nuevo",
        description:"",
        date:new Date(),
        image:"imagen_no_disponible.gif",
        project_id:0,
        created_at:null,
        deleted_at:null,
        updated_at:null
      };

    activate();

    function activate(){
        vm.one=JSON.parse(sessionStorage.getItem("one"));
        console.log('vm.one',vm.one)

        if (vm.one.id){
          
          $scope.imgProyect={
            compressed:{
              dataURL:"http://agrimek.local/img/"+vm.one.image
            }
          };
          console.log($scope.imgProyect)

          getEventList().then(function(){
            console.log('lista cargada en el activate')
            console.log('eventos',vm.listaEventos)
          })
        }
    }

    vm.goBack=function(){
      $state.go('projects-list');   
    }

    vm.eventDialog=function(evento){
      eventsService.one={};
      angular.copy(evento,eventsService.one)

      $mdDialog.show({
        controller: 'eventModalController',
        controllerAs: 'ctrl',
        templateUrl: 'front/app/projects/projects.event.modal.tpl.html',
        parent: angular.element(document.body),
        clickOutsideToClose:true
      })
      .then(function(){
        $rootScope.showToast('Evento guardado con exito');
        getEventList();
      });

    }

    function getEventList(){
      return projectsService.getEvents(vm.one.id).then(function(res){
        console.log('getList',res)
        if (res.data && res.status==200){
          vm.listaEventos=res.data.data;
          Pace.stop();
        } 
          vm.listaEventos.push(eventoNuevo);
      },function(error){
        console.log('has error',error)
        vm.error=error.data.error;
      });
    }

    vm.deleteEvent = function(evento){
      var confirm=$mdDialog.confirm()
        .title("¿Desea eliminar el Evento?")
        .textContent(evento.name)
        .ariaLabel("eliminar")
        .ok('Aceptar')
        .cancel('Cancelar');
  
      $mdDialog.show(confirm).then(function(){
         eventsService.delOne(evento.id).then(function(res){
            console.log('delEvent',res)
              $rootScope.showToast('Evento eliminado con exito');
              getEventList();
          },function(error){
            console.log('has error',error)
            vm.error=error.data.error;
          }); 
      }, function(){

      })


    }

    vm.guardar = function() {
      vm.full=false;
      vm.one.start_date=$filter('date')(vm.one.start_date, "yyyy-MM-dd HH:mm:ss");
      if (vm.one.id){
        delete vm.one.image;
        guardarProyecto();
      } else {
        $http.get($scope.imgProyect.compressed.dataURL,{responseType: "blob"}).success((data) => {
          var file = new File([data], $scope.imgProyect.file.name);
          console.log('file',file)

          vm.one.image=file;
          guardarProyecto();

        },function(error){
          console.log('has error',error)

        });

      }



      /*
      Pace.restart();

      vm.full=false;
      vm.one.start_date=$filter('date')(vm.one.start_date, "yyyy-MM-dd HH:mm:ss");

      console.log('toSave',vm.one)
      projectsService.setOne(vm.one).then(function(res){
        console.log('res guardar',res)
        if (res.data){
          vm.one=res.data.data;
          sessionStorage.setItem("one",JSON.stringify(vm.one));
          $rootScope.showToast('Proyecto guardado con exito');
          if (!vm.listaEventos.length) getEventList();
          Pace.stop();
        } 
      },function(error){
          $rootScope.showToast(error.data.error);
          console.log('has error',error)
          vm.error=error.data.error;
          Pace.stop();
          vm.full=true;
      });
      */
    } 


    function guardarProyecto(){
      console.log('toSave',vm.one)
  
        Pace.restart();
        //vm.full=false;
        console.log('voy a guardar el proyecto')
        projectsService.setOne(vm.one).then(function(res){
          console.log('res guardar',res)
          if (res.data){
            vm.one=res.data.data;
            sessionStorage.setItem("one",JSON.stringify(vm.one));
            $rootScope.showToast('Proyecto guardado con exito');
            if (!vm.listaEventos.length) getEventList();
            Pace.stop();
          } 
        },function(error){
            console.log('has error',error)
            $rootScope.showToast(error.data.error);
            vm.error=error.data.error;
            Pace.stop();
            vm.full=true;
        });
    }


  }

})();