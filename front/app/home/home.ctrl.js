(function(){
	'use strict';

  	angular.module("myApp")
  	.controller("homeController", homeController);

  	homeController.$inject=['$scope', '$state', 'authService', 'projectsService'];

  	function homeController($scope, $state, authService, projectsService){
    	var vm=this;
      vm.loading=false;
      vm.listaProyectos=[];
      activate();

      var elToken="";

      function activate(){
        console.log('home')
        /*
        authService.logIn().then(function(res){
          console.log('authService.logIn',res)
          //elToken=res;
          /*elToken=res.data.data;
          if (res.data && res.status==200){
            //getList();

          }
        },function(error){
            console.log('has error',error)
            //vm.error=error.data.error;
        });
        /*.finally(function() {
            console.log("finally finished gists");
            //console.log('elToken',elToken)
            //getList();
        });*/
        authService.logIn().then(function(res){
          console.log("then",res);
          vm.listaProyectos=res.data.data;
        });
        /*.finally(function(res){
          console.log("finally",res);
        });*/

        /*
        inicia().then(function(res){
          console.log('inicia',res);
        },function(error){
            console.log('has error',error)
            //vm.error=error.data.error;
        });
        */
      }


      function inicia(){
        return authService.logIn().then(function(res){
          console.log('authService.logIn',res)
          return res;
          //elToken=res;
          /*elToken=res.data.data;
          if (res.data && res.status==200){
            //getList();

          }*/
        },function(error){
            console.log('has error',error)
            //vm.error=error.data.error;
        });
      }

      function getList (){
        vm.loading=true;        
        return projectsService.getProjects().then(function(res){
          vm.loading=false;
          console.log(res.data.data)
          if (res.data && res.status==200){
            vm.listaProyectos=res.data.data;
            return vm.listaProyectos;
            console.log('lista',vm.listaProyectos)
          }
        },function(error){
            console.log('has error',error)
            vm.error=error.data.error;
        });
      }

      vm.verProyecto=function(proyecto){
        console.log('proyecto',proyecto)
        sessionStorage.setItem("one",JSON.stringify(proyecto));
        $state.go('menu.proyectos');
      }
      
  	}

})();