(function (){
	angular.module('myApp',[
	    'ui.router',
	    'oc.lazyLoad',
		])

	.constant('CONFIG',{
		'appName':'Agrimek',
		'APIURL':'rest/',		
		'URL':'front/',	
	})

	.run(['$rootScope', '$state', 'CONFIG', function ($rootScope, $state, CONFIG) {

		$rootScope.appSeccion="";
		$rootScope.formColor="background-50";
		$rootScope.formBcolor="background-400";
		
        /************** ROUTE CHANGE ************/
		$rootScope.$on('$stateChangeStart', function(event, toState) {
			//console.log(toState)
			console.log('$stateChangeStart')
			$rootScope.preloader = false;
		   	if (toState.name === "menu.home") {
		      	return; // already going to menu.home
		   	}
		   /*	if (toState.name !== 'menu.home') {
		   		$state.go('menu.home');
                event.preventDefault();
            }*/
		});

		$rootScope.$on('$stateChangeSuccess', function (ev, to, toParams, from, fromParams,CONFIG) {
			$rootScope.preloader = true;
			console.log('$stateChangeSuccess')
			/*
			if (from.name){
				localStorage.setItem("prevState",from.name);
			}
			var obj={	
						sectionName:'nada'
					};
			if (to.params){

				obj=to.params;
			}
			$rootScope.appSeccion=obj.sectionName;
			*/
		});
		$rootScope.$state=$state;

	}])

	

	.filter('dateToISO', function() {
	  return function(input) {
	    input = new Date(input).toISOString();
	    return input;
	  };
	})

	/* ********* DIRECTIVAS ******************* */
	/* FORMATO NUMERICO */

	.directive('formatoNumerico', ['$filter', function ($filter)  {
	  	var decimalCases = 2,
        whatToSet = function (str) {
          /**
           * TODO:
           * don't allow any non digits character, except decimal seperator character
           */
          return str ? Number(str) : '';
        },
        whatToShow = function (num) {
          return $filter('number')(num, decimalCases);
        };

        return {
          restrict: 'A',
          require: 'ngModel',
          link: function (scope, element, attr, ngModel) {
            ngModel.$parsers.push(whatToSet);
            ngModel.$formatters.push(whatToShow);

            element.bind('blur', function() {
              element.val(whatToShow(ngModel.$modelValue));
            });
            element.bind('focus', function () {
              element.val(ngModel.$modelValue);
            });
          }
        };
	}])


	.config(["$provide", "$stateProvider","$urlRouterProvider",'$httpProvider','$ocLazyLoadProvider', function($provide, $stateProvider,$urlRouterProvider,$httpProvider,$ocLazyLoadProvider){
		
        //$ocLazyLoadProvider.config({debug:true});
		
        /*********** HTTP PROVIDER ***************/
		$httpProvider.defaults.headers.common["X-Requested-With"]="XMLHttpRequest";

        /*********** STATE PROVIDER ***************/
		$urlRouterProvider.otherwise("home");

		$stateProvider
		
	    /*************************************************** APP MENU CONTAINER **********************************************************/
	   	.state('menu',{
			abstract:true,
			url:"/",
			templateUrl:"front/app/menu/menu.tpl.html",
			controller:"menuController",
			controllerAs:"ctrl",
			resolve:{
		        menuLoad: ['$ocLazyLoad' ,function($ocLazyLoad){
		          return $ocLazyLoad.load([
			          						{
			          							name: 'sistemaModule',
				          						serie:true,
				          						files:[	
												    	"front/app/menu/menu.ctrl.js"]
					          				},
					]);
		        }]
			}
		})		
		
		/*************************************************** HOME **********************************************************/
	    .state('menu.home', {
	      	url: "home",
			templateUrl:'front/app/home/home.tpl.html',
			controller:"homeController",
			controllerAs:"ctrl",
			resolve:{
		        menuLoad: ['$ocLazyLoad' ,function($ocLazyLoad){
		          return $ocLazyLoad.load([
			          						{
			          							name: 'sistemaModule',
				          						serie:true,
				          						files:[	
				          								"front/app/services/authentication.srv.js",
				          								"front/app/services/projects.srv.js",
												    	"front/app/home/home.ctrl.js"]
					          				},
					]);
		        }]
			}
	    })
	    /*********************************************** QUIENES SOMOS *******************************************************/
	    .state('menu.quienes-somos', {
	      	url: "quienes-somos",
			templateUrl:'front/app/quienes-somos/quienes-somos.tpl.html',
	    })	   

	    /*********************************************** PROYECTOS *******************************************************/
	    .state('menu.proyectos', {
	      	url: "proyectos",
			templateUrl:'front/app/projects/projects.tpl.html',
			controller:"proyectosController",
			controllerAs:"ctrl",
			resolve:{
		        menuLoad: ['$ocLazyLoad' ,function($ocLazyLoad){
		          return $ocLazyLoad.load([
			          						{
			          							name: 'sistemaModule',
				          						serie:true,
				          						files:[	
				          								"front/app/services/projects.srv.js",
												    	"front/app/projects/projects.ctrl.js"]
					          				},
					]);
		        }]
			}
	    })	   
	    .state('menu.condiciones', {
	      	url: "condiciones",
			templateUrl:'front/app/envios/condiciones.tpl.html',
	    })	 

	    /*********************************************** SERVICIOS *******************************************************/
	    .state('menu.rastreo-envio', {
	      	url: "rastreo-envio",
			templateUrl:'front/app/servicioslinea/rastreo-envio.tpl.html',
			controller:"rastreoController",
			controllerAs:"ctrl",
			resolve:{
		        menuLoad: ['$ocLazyLoad' ,function($ocLazyLoad){
		          return $ocLazyLoad.load([
			          						{
			          							name: 'sistemaModule',
				          						serie:true,
				          						files:[	
												    	"front/app/servicioslinea/rastreo-envio.ctrl.js"]
					          				},
					]);
		        }]
			}
	    })	 
	    .state('menu.calculadora-tarifa', {
	      	url: "calculadora-tarifa",
			templateUrl:'front/app/servicioslinea/calculadora-tarifa.tpl.html',
			controller:"calculadoraController",
			controllerAs:"ctrl",
			resolve:{
		        menuLoad: ['$ocLazyLoad' ,function($ocLazyLoad){
		          return $ocLazyLoad.load([
			          						{
			          							name: 'sistemaModule',
				          						serie:true,
				          						files:[	
												    	"front/app/servicioslinea/calculadora-tarifa.ctrl.js"]
					          				},
					]);
		        }]
			}
	    })	 

	    /*********************************************** UBICANOS *******************************************************/
	    .state('menu.ubicanos', {
	      	url: "ubicanos",
			templateUrl:'front/app/ubicanos/ubicanos.tpl.html',
	    })	 

	    /*********************************************** CONTACTANOS *******************************************************/
	    .state('menu.contactanos', {
	      	url: "contactanos",
			templateUrl:'front/app/contactanos/contactanos.tpl.html',
			controller:"contactanosController",
			controllerAs:"ctrl",
			resolve:{
		        menuLoad: ['$ocLazyLoad' ,function($ocLazyLoad){
		          return $ocLazyLoad.load([
			          						{
			          							name: 'sistemaModule',
				          						serie:true,
				          						files:[	
												    	"front/app/contactanos/contactanos.ctrl.js"]
					          				},
					]);
		        }]
			}
	    })	 
		
		/*********************************************** FOOTER *******************************************************/
		.state('menu.footer-condiciones', {
	      	url: "condicionesdeuso",
			templateUrl:'front/app/footer/condiciones.tpl.html',
	    })	

	}]);

	

})();