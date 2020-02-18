(function(){
  'use strict';

  angular.module("myApp")
  .controller("projectListController", projectListController);
  projectListController.$inject=['$rootScope','$filter', '$state', '$mdDialog', '$mdMedia', 'uiGridConstants', 'projectsService', 'CONFIG'];

  function projectListController($rootScope, $filter, $state, $mdDialog, $mdMedia, uiGridConstants, projectsService,  CONFIG){
    var logUser=JSON.parse(sessionStorage.getItem("logUser"));
    var logEmpresa=JSON.parse(sessionStorage.getItem("logEmpresa"));

    var vm=this;
    vm.filtro="";
    vm.list=[];
    vm.loading=false;

    var lista=[];

    var nuevo={};
    vm.gridOptions = {
        columnDefs: [
          { field: 'start_date', displayName: 'INICIO', cellFilter: 'date:"shortDate"', sort: { direction: uiGridConstants.DESC }, },
          { field: 'name', displayName: 'NOMBRE', sort: { direction: uiGridConstants.ASC }, },
          { field: 'description', displayName: 'DESCRIPCION', visible: !$mdMedia('xs')},
        ],
        onRegisterApi: function( gridApi ) {
          vm.gridApi=gridApi;
          gridApi.selection.on.rowSelectionChanged(null, function (rows) {
            vm.gridApi.expandable.collapseAllRows();
            vm.gridApi.expandable.toggleRowExpansion(rows.entity)
          });        
        },
        expandableRowTemplate: 'front/app/projects/projects.list.row.tpl.html',
        enableExpandableRowHeader: false,
        expandableRowScope: { 
          editar: function(ev){
              var sel=vm.gridApi.selection.getSelectedRows();
              vm.selOne(sel[0])
          } 
        },          

    };

    activate();

    function activate(){
      console.log('inicio activate')
      Pace.restart();
      return getList().then(function(){
          vm.list=lista;
          vm.gridOptions.data = vm.list;          
          //vm.filtrar();
          Pace.stop();
          console.log('pase')
      })
    }

    function getList (){
      vm.loading=true;        
      return projectsService.getList().then(function(res){
        vm.loading=false;
        console.log(res.data.data)
        if (res.data && res.status==200){
          //localStorage.setItem("token",res.data.response.token);
          lista=res.data.data;
          return lista;
          console.log('lista',lista)
        }
      },function(error){
          console.log('has error',error)
          vm.error=error.data.error;
      });
    }

    vm.filtrar = function() {
      vm.gridOptions.data = $filter('filter')(lista, vm.filtro);
    };

    vm.agregar = function(ev){
      var one={
        created_at:null,
        deleted_at:null,
        description:"",
        id:0,
        name:"Proyecto nuevo",
        start_date:new Date(),
        updated_at:null
      }
      sessionStorage.setItem("one",JSON.stringify(one));
      $state.go('projects-detail'); 
    }

    vm.selOne = function(item,ev){
      console.log('item',item)
      return projectsService.getOne(item.id).then(function(res){
        console.log('res sel ',res)
        if (res.data && res.status==200){
          sessionStorage.setItem("one",JSON.stringify(res.data.data));
          $state.go('projects-detail');             
        }
      })
    }



  }

})();