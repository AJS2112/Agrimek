(function(){
  'use strict';
  
  angular.module("myApp")
  .controller("eventModalController", eventModalController);
  eventModalController.$inject=['$rootScope', '$mdDialog', '$scope', '$filter', 'eventsService', '$http'];

  function eventModalController($rootScope, $mdDialog, $scope, $filter,  eventsService, $http){
    var vm=this;
    vm.one = {};
    vm.error="";
    vm.full=true;

    var proyecto=JSON.parse(sessionStorage.getItem("one"));

    activate();

    function activate(){
      console.log('evento',eventsService.one)

      vm.one=eventsService.one;
      /*if (vm.one.id){
        $scope.image1={compressed:{}};

        $scope.image1.compressed.dataURL="http://agrimek.local/img/"+vm.one.image;
      }*/
    }

    vm.hide = function() {
      $mdDialog.hide();
    };

    vm.cancel = function() {
      $mdDialog.cancel();
    };

    vm.guardar = function() {
      //vm.one.image=$scope.image1.url;
      console.log('$scope',$scope.image1)

      $http.get($scope.image1.compressed.dataURL,{responseType: "blob"}).success((data) => {
        var file = new File([data], $scope.image1.file.name);
        //$scope.sampleFile=file;
        vm.one.image=file;
        vm.one.project_id=proyecto.id;
        vm.one.date=$filter('date')(vm.one.date, "yyyy-MM-dd HH:mm:ss");
        console.log('toSave',vm.one)
  
        Pace.restart();
        //vm.full=false;
        
        eventsService.setOne(vm.one).then(function(res){
            $mdDialog.hide();
            Pace.stop();
        },function(error){
          console.log('has error',error)
          vm.error=error.data.error;
        });
        
      });




    } 
  }

})();