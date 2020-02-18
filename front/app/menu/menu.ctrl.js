(function(){
	'use strict';

  	angular.module("myApp")
  	.controller("menuController", menuController);

  	menuController.$inject=['$scope', '$state','$location', '$anchorScroll'];

  	function menuController($scope, $state, $location, $anchorScroll){
      var originatorEv;
    	var vm=this;
      vm.currentNavItem = "";
      vm.lockLeft = true;
      vm.logUser={};
      vm.menuArbol=[];
      vm.menuItems=[];
      vm.titulo="";
      vm.esMobile=false;

      activate();

      function activate(){
      }
      vm.scrollTo=function(hash){
        $location.hash(hash);
      }
  	}

})();