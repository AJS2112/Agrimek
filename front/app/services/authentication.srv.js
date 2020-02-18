(function(){
	'use strict';
	
	angular.module('myApp')
	.factory('authService',authService) 
	authService.$inject=['$http','$q','CONFIG', '$httpParamSerializerJQLike'];

	function authService($http,$q,CONFIG,$httpParamSerializerJQLike){
		var loginService = {
			logIn:logIn,
			getToken:getToken
		}
		return loginService;

		function logIn(){
			var deferred;
			deferred=$q.defer();

			getToken().then(function(res){
	          //console.log("getToken then",res);
	          getProjects(res.data.access_token).then(function(res){
	          	//console.log("getProjects then",res);
	          	deferred.resolve(res);
	          })
	        });

	        return deferred.promise;
		}

		function getToken(){
			var toke="";
			var obj={
				'grant_type':'client_credentials',
				'client_id':1,
				'client_secret':'C7P9g3tJDvzFyuA62a4XN9EdrQUxCPiueBu0G1ie',
			}	
			//console.log('send obj',obj);

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
				console.log("sessionToken",res.data.access_token)
		        sessionStorage.setItem("token",res.data.access_token);
				deferred.resolve(res);
			},function(error){
				deferred.reject(error);
			})
			return deferred.promise;
		}

		function getProjects(myToken){
	    	//console.log('myToken',myToken)
	        var deferred=$q.defer();
			$http({
	            method: 'GET',
				skipAutorization:true,
	            url: 'http://agrimek.local/api/projects',
	            headers: {'Authorization': 'Bearer '+myToken}
	        })				
			.then (function(res){
				deferred.resolve(res);
			},function(error){
				deferred.reject(error);
			})
			return deferred.promise;
	    }



		function logIn3(user){
			var toke="";
			var obj={
				'grant_type':'client_credentials',
				'client_id':1,
				'client_secret':'C7P9g3tJDvzFyuA62a4XN9EdrQUxCPiueBu0G1ie',
			}	
			//console.log('send obj',obj);

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
				toke=res.data.data;
				//console.log('authService.logIn',res);				
				/*if (res.data && res.status == 200){
		          	sessionStorage.setItem("token",res.data.access_token);
		       	}*/
				deferred.resolve(res);
			},function(error){
				deferred.reject(error);
			})
			/*.finally (function(res){
				console.log('finally',toke)
				return toke;
			})*/
			return deferred.promise;
		}

		function logIn4(user){
			var toke="";
			var lista=[];
			var obj={
				'grant_type':'client_credentials',
				'client_id':1,
				'client_secret':'C7P9g3tJDvzFyuA62a4XN9EdrQUxCPiueBu0G1ie',
			}	
			//console.log('send obj',obj);

			var deferred=$q.defer();
			$http({
	            method: 'POST',
				skipAutorization:true,
	            url: 'http://agrimek.local/api/oauth/token',
	            data:$httpParamSerializerJQLike(obj),
	            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
	        })				
			.then (function(res){
				toke=res.data.access_token;
				//console.log('authService.logIn',res);				
				/*if (res.data && res.status == 200){
		          	sessionStorage.setItem("token",res.data.access_token);
		       	}
				deferred.resolve(res);
				*/
			},function(error){
				//deferred.reject(error);
			})
			.finally (function(res){
				//console.log('finally',toke)
				sessionStorage.setItem("token",toke);



				//console.log('myTokenSrv',toke)
		        //var deferred=$q.defer();
				$http({
		            method: 'GET',
					skipAutorization:true,
		            url: 'http://agrimek.local/api/projects',
		            headers: {'Authorization': 'Bearer '+toke}
		        })				
				.then (function(res){
					console.log(res.data.data)
					//return res.data.data;
					deferred.resolve(res);
					//lista=res;
				},function(error){
					console.log(error)
					//return error;
					deferred.reject(error);
					//lista=[];
				})
				.finally (function(res){
					/*console.log('finalmente retorno la lista',lista)
					return lista;*/
				})
				return deferred.promise;
			})
		}
			

	}
})();