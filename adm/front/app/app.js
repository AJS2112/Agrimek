(function (){
	angular.module('myApp',[
		'angular-jwt',
	    'ui.router',
	    'oc.lazyLoad',
	    'ngAnimate',
	    'ngMessages',
	    'ngMaterial',
	    'ui.grid',
	    'ui.grid.selection',
	    'ui.grid.expandable',
	    'ui.grid.autoResize',
		'ui.grid.cellNav',	 
		//'angularFileUpload'
		])

	.constant('CONFIG',{
		'APIURL':'agrimek.local/api/',		
		'URL':'front/'
	})

	.run(['$rootScope', '$state', '$mdToast', 'CONFIG', function ($rootScope, $state, $mdToast, CONFIG) {
		/*$rootScope.appSeccion="";
		$rootScope.formColor="background-50";
		$rootScope.formBcolor="background-400";*/
		
        /************** ROUTE CHANGE ************/
		$rootScope.$on('$stateChangeStart', function(event, toState) {
			//console.log(toState)
			$rootScope.preloader = false;
		   	/*if (toState.name === "menu.home") {
		      	return; // already going to menu.home
		   	}*/
		   /*	if (toState.name !== 'menu.home') {
		   		$state.go('menu.home');
                event.preventDefault();
            }*/
		});

		$rootScope.$on('$stateChangeSuccess', function (ev, to, toParams, from, fromParams,CONFIG) {
			$rootScope.preloader = true;
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
			$rootScope.appSeccion=obj.sectionName;*/
		});
		$rootScope.$state=$state;

		$rootScope.showToast =  function(texto) {
	      $mdToast.show(
	        $mdToast.simple()
	          .textContent(texto)
	          .action('CERRAR')
	          .highlightAction(true)
	          .highlightClass('md-accent')
	          .position('top right')
	      ).then(function(response) {
	          if ( response == 'ok' ) {
	            $mdToast.hide();
	          }
	      });
	    };

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
	
	.directive('image', ['$q',
		function($q) {


			var URL = window.URL || window.webkitURL;

			var getResizeArea = function() {
				var resizeAreaId = 'fileupload-resize-area';

				var resizeArea = document.getElementById(resizeAreaId);

				if (!resizeArea) {
					resizeArea = document.createElement('canvas');
					resizeArea.id = resizeAreaId;
					resizeArea.style.visibility = 'hidden';
					document.body.appendChild(resizeArea);
				}

				return resizeArea;
			};

			/**
			 * Receives an Image Object (can be JPG OR PNG) and returns a new Image Object compressed
			 * @param {Image} sourceImgObj The source Image Object
			 * @param {Integer} quality The output quality of Image Object
			 * @return {Image} result_image_obj The compressed Image Object
			 */

			var jicCompress = function(sourceImgObj, options) {
				var outputFormat = options.resizeType;
				var quality = options.resizeQuality * 100 || 70;
				var mimeType = 'image/jpeg';
				if (outputFormat !== undefined && outputFormat === 'png') {
					mimeType = 'image/png';
				}


				var maxHeight = options.resizeMaxHeight || 300;
				var maxWidth = options.resizeMaxWidth || 250;

				var height = sourceImgObj.height;
				var width = sourceImgObj.width;

				// calculate the width and height, constraining the proportions
				if (width > height) {
					if (width > maxWidth) {
						height = Math.round(height *= maxWidth / width);
						width = maxWidth;
					}
				}
				else {
					if (height > maxHeight) {
						width = Math.round(width *= maxHeight / height);
						height = maxHeight;
					}
				}

				var cvs = document.createElement('canvas');
				cvs.width = width; //sourceImgObj.naturalWidth;
				cvs.height = height; //sourceImgObj.naturalHeight;
				var ctx = cvs.getContext('2d').drawImage(sourceImgObj, 0, 0, width, height);
				var newImageData = cvs.toDataURL(mimeType, quality / 100);
				var resultImageObj = new Image();
				resultImageObj.src = newImageData;
				return resultImageObj.src;

			};

			var resizeImage = function(origImage, options) {
				var maxHeight = options.resizeMaxHeight || 300;
				var maxWidth = options.resizeMaxWidth || 250;
				var quality = options.resizeQuality || 0.7;
				var type = options.resizeType || 'image/jpg';

				var canvas = getResizeArea();

				var height = origImage.height;
				var width = origImage.width;

				// calculate the width and height, constraining the proportions
				if (width > height) {
					if (width > maxWidth) {
						height = Math.round(height *= maxWidth / width);
						width = maxWidth;
					}
				}
				else {
					if (height > maxHeight) {
						width = Math.round(width *= maxHeight / height);
						height = maxHeight;
					}
				}

				canvas.width = width;
				canvas.height = height;

				//draw image on canvas
				var ctx = canvas.getContext('2d');
				ctx.drawImage(origImage, 0, 0, width, height);

				// get the data from canvas as 70% jpg (or specified type).
				return canvas.toDataURL(type, quality);
			};

			var createImage = function(url, callback) {
				var image = new Image();
				image.onload = function() {
					callback(image);
				};
				image.src = url;
			};

			var fileToDataURL = function(file) {
				var deferred = $q.defer();
				var reader = new FileReader();
				reader.onload = function(e) {
					deferred.resolve(e.target.result);
				};
				reader.readAsDataURL(file);
				return deferred.promise;
			};


			return {
				restrict: 'A',
				scope: {
					image: '=',
					resizeMaxHeight: '@?',
					resizeMaxWidth: '@?',
					resizeQuality: '@?',
					resizeType: '@?'
				},
				link: function postLink(scope, element, attrs) {

					var doResizing = function(imageResult, callback) {
						createImage(imageResult.url, function(image) {
							//var dataURL = resizeImage(image, scope);
							var dataURLcompressed = jicCompress(image, scope);
							// imageResult.resized = {
							// 	dataURL: dataURL,
							// 	type: dataURL.match(/:(.+\/.+);/)[1]
							// };
							imageResult.compressed = {
								dataURL: dataURLcompressed,
								type: dataURLcompressed.match(/:(.+\/.+);/)[1]
							};
							callback(imageResult);
						});
					};

					var applyScope = function(imageResult) {
						scope.$apply(function() {
							console.log(imageResult);
							if (attrs.multiple) {
								scope.image.push(imageResult);
							}
							else {
								scope.image = imageResult;
							}
						});
					};


					element.bind('change', function(evt) {
						//when multiple always return an array of images
						if (attrs.multiple)
							{scope.image = [];}

						var files = evt.target.files;
						for (var i = 0; i < files.length; i++) {
							//create a result object for each file in files
							var imageResult = {
								file: files[i],
								url: URL.createObjectURL(files[i])
							};

							fileToDataURL(files[i]).then(function(dataURL) {
								console.log(dataURL)
								imageResult.dataURL = dataURL;
							});

							if (scope.resizeMaxHeight || scope.resizeMaxWidth) { //resize image
								doResizing(imageResult, function(imageResult) {
									applyScope(imageResult);
								});
							}
							else { //no resizing
								applyScope(imageResult);
							}
						}
					});
				}
			};
		}
	])

	
	
	/*
	.directive('fileModel', ['$parse', function($parse){
		return{
			restrict:'A',
			link:function(scope,element,attrs){
				var model = $parse(attrs.fileModel);
				var modelSetter = model.assign;

				element.bind('change',function(){
					scope.$apply(function(){
						console.log('erchivo',element[0].files[0])
						modelSetter(scope,element[0].files[0]);
						console.log(scope)
					})
				})
			}
		}
	}])
	*/

	
	.config(["$provide", "$stateProvider","$urlRouterProvider",'$httpProvider','$ocLazyLoadProvider', '$mdDateLocaleProvider', '$mdThemingProvider', function($provide, $stateProvider,$urlRouterProvider,$httpProvider,$ocLazyLoadProvider,$mdDateLocaleProvider,$mdThemingProvider){
        //$ocLazyLoadProvider.config({debug:true});
		
		$mdThemingProvider.theme('nominas')
		    .primaryPalette('blue-grey')
		    .accentPalette('orange')
		    .warnPalette('red')
		    .backgroundPalette('grey');
		$mdThemingProvider.setDefaultTheme('nominas');

		/************** GRID OPTIONS *************/
		$provide.decorator('GridOptions', [ '$delegate', function($delegate){
		    var gridOptions;
		    gridOptions = angular.copy($delegate);
		    gridOptions.initialize = function(options) {
		      var initOptions;
		      initOptions = $delegate.initialize(options);
		      initOptions.enableColumnMenus = false;
		      initOptions.enableSorting= false;
		      initOptions.showColumnFooter= false;
	  		  initOptions.showGridFooter= false;      
	  		  initOptions.noUnselect=true;
		      initOptions.enableRowSelection= true;
		      initOptions.enableRowHeaderSelection= false;
		      initOptions.enableAutoResizing= true;
		      initOptions.enableexpandAll= false;
		      initOptions.selectionRowHeaderWidth= 50;
		      initOptions.multiSelect= false;
		      initOptions.rowHeight=50;
		      initOptions.enableHorizontalScrollbar=0;
		      initOptions.enableVerticalScrollbar=1;

		      return initOptions;
		    };
		    return gridOptions;
		}]);

		/************** $mdDateLocaleProvider *************/
		$mdDateLocaleProvider.formatDate = function(date) {
			var d = new Date(date),
			    month = '' + (d.getMonth() + 1),
			    day = '' + d.getDate(),
			    year = d.getFullYear();

			if (month.length < 2) month = '0' + month;
			if (day.length < 2) day = '0' + day;

			var miD=[day, month, year].join('/');
			return miD;
		};
		
        //$ocLazyLoadProvider.config({debug:true});

        /*********** HTTP PROVIDER ***************/
		$httpProvider.defaults.headers.common["X-Requested-With"]="XMLHttpRequest";

        /*********** STATE PROVIDER ***************/
		$urlRouterProvider.otherwise("login");

		$stateProvider

		/******** LOGIN *******/
		.state('login', {
	      url: "/login",
	      authorization: false,
	      onEnter: [ '$stateParams', '$state', '$mdDialog', function($stateParams, $state, $mdDialog) {
	        $mdDialog.show({
	        	controller: 'loginController',
	          	controllerAs: 'ctrl',
	          	templateUrl: 'front/app/login/login.tpl.html',
	          	parent: angular.element(document.body),
	          	clickOutsideToClose:false
	        });
	      }],
	      resolve: {
	        loginLoad: ['$ocLazyLoad', function($ocLazyLoad){
	          return $ocLazyLoad.load([
								            {
								              name: "loginModule",
								              serie:true,
								              files: [
								              			"front/app/services/usuarios.srv.js",
								              			"front/app/login/login.ctrl.js"
								              			]
								            },
	          	]

	          );
	        }]
	      }
	    })
	    

		/******** PROYECTOS *******/
	    .state('projects-list',{
			url:'/projects',
			templateUrl:'front/app/projects/projects.list.tpl.html',
			controller:"projectListController",
			controllerAs:"ctrl",
			params: {
	            sectionName: 'Proyectos'
	        },			
			resolve:{
		        usuariosLoad: ['$ocLazyLoad' ,function($ocLazyLoad){
		          return $ocLazyLoad.load([
				          					{
				          						name: 'listModule',
				          						serie:true,
				          						files:[	
											    	"front/app/services/projects.srv.js",
				          							"front/app/projects/projects.list.ctrl.js",			    
													//"front/app/projects/projects.detail.ctrl.js"
													]
											}		              	
					]);
		        }]
			}
		})
	    
		.state('projects-detail',{
			url:'/projects-detail',
			templateUrl:'front/app/projects/projects.detail.tpl.html',
			controller:"projectDetailController",
			controllerAs:"ctrl",
			params: {
	            sectionName: 'Proyecto'
	        },			
			resolve:{
		        usuariosLoad: ['$ocLazyLoad' ,function($ocLazyLoad){
		          return $ocLazyLoad.load([
				          					{
				          						name: 'listModule',
				          						serie:true,
				          						files:[	
											    	"front/app/services/projects.srv.js",
											    	"front/app/services/events.srv.js",
				          							//"front/app/projects/projects.list.ctrl.js",			    
													"front/app/projects/projects.detail.ctrl.js",
													"front/app/projects/projects.event.modal.ctrl.js"
													]
											}		              	
					]);
		        }]
			}
		})
	    /*************************************************** APP MENU CONTAINER **********************************************************/
	   		

	    /*
	   	.state('menu',{
			abstract:true,
			url:"/",
			templateUrl:"front/app/home/menu.tpl.html",
			controller:"menuController",
			controllerAs:"ctrl",
			resolve:{
		        menuLoad: ['$ocLazyLoad' ,function($ocLazyLoad){
		          return $ocLazyLoad.load([
			          						{
			          							name: 'sistemaModule',
				          						serie:true,
				          						files:[	
												    	"front/app/home/menu.ctrl.js"]
					          				},
					]);
		        }]
			}
		})		
		*/
		/*************************************************** HOME **********************************************************/
	    /*
	    .state('menu.home', {
	      	url: "home",
			templateUrl:'front/app/home/home.tpl.html',
	    })
	    */

	    

	}]);

	

})();