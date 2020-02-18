(function(){
	'use strict';

  	angular.module("myApp")
  	.controller("loginController", loginController);

  	loginController.$inject=['$rootScope','jwtHelper','$state', '$mdDialog', '$filter', 'usuariosService'];

  	function loginController($rootScope,jwtHelper,$state,$mdDialog,$filter,usuariosService){
      var vm=this;
      vm.user={};

      vm.user.logname='kenyon46@example.org';
      vm.user.password='secret';

      vm.crear=function(){
          sisUsuariosService.one={};
          $state.go("signup");
          $mdDialog.hide();        
      }

      vm.logIn = function(user){
        console.log('test')
        //USUARIO
        usuariosService.logIn(user).then(function(res){
          console.log('response',res)
          vm.error="Bienvenido";
          if (res.data && res.status == 200){
              sessionStorage.setItem("token",res.data.access_token);
              $state.go("projects-list");
              $mdDialog.hide();
          }
        },function(error){
          console.log('has error',error)
          vm.error=error.data.error;
        });
      }   

  	}

})();