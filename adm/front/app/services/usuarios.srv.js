(function(){
	'use strict';
	
	angular.module('myApp')
	.factory('usuariosService',usuariosService) 
	usuariosService.$inject=['$http','$q','CONFIG', '$httpParamSerializerJQLike'];

	function usuariosService($http,$q,CONFIG,$httpParamSerializerJQLike){
		var loginService = {
			logIn:logIn
		}
		return loginService;


		function logIn(user){

			var obj={
				'grant_type':'password',
				'client_id':2,
				'client_secret':'05GamdhO1PAjm99qxrNWA724NlAIRXVlxQcsIHOr',
				'username':'',
				'password':''
			}	

			obj.username=user.logname;
			obj.password=user.password;

			console.log('send obj',obj);
			var deferred;
			deferred=$q.defer();
			$http({
	            method: 'POST',
				skipAutorization:true,
	            url: 'http://agrimek.local/api/oauth/token',
	            data:$httpParamSerializerJQLike(obj),
	            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
	        })				
			.then (function(res){
				deferred.resolve(res);
			},function(error){
				deferred.reject(error);
			})
			return deferred.promise;
		}
			

	}
})();