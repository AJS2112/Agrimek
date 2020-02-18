(function(){
  'use strict';
  
  angular.module("myApp")
  .controller("proyectosController", proyectosController);
  proyectosController.$inject=[ '$filter', '$rootScope', '$state', '$scope', 'projectsService'];

  function proyectosController($filter, $rootScope, $state, $scope,  projectsService){
    

    var vm=this;
    vm.listaEventos=[];
    vm.one = {};
    vm.error="";
    vm.full=true;

    activate();

    function activate(){
        vm.one=JSON.parse(sessionStorage.getItem("one"));
        console.log('vm.one',vm.one)


        getEventList().then(function(){
          console.log('lista cargada en el activate')
          console.log('eventos',vm.listaEventos)
        });
    }

    vm.goBack=function(){
      $state.go('projects-list');   
    }


    function getEventList(){
      return projectsService.getEvents(vm.one.id).then(function(res){
        console.log('getList',res)
        if (res.data && res.status==200){
          vm.listaEventos=res.data.data;
          Pace.stop();
        } 
      },function(error){
        console.log('has error',error)
        vm.error=error.data.error;
      });
    }



  }

})();