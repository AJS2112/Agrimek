(function(){
	'use strict';
	
	angular.module('myApp')
	.factory('projectsService',projectsService) 
	projectsService.$inject=['$http','$q','$httpParamSerializerJQLike','CONFIG'];

	function projectsService($http,$q,$httpParamSerializerJQLike,CONFIG){
		var myToken=sessionStorage.getItem("token");
		var one={};
		var mySrv = {
			getEvents:getEvents,
			getList:getList,
			getOne:getOne,
			one:one,
			setOne:setOne
		}
		return mySrv;

		function getEvents(idProject){
	        var deferred=$q.defer();
			$http({
	            method: 'GET',
				skipAutorization:true,
	            url: 'http://agrimek.local/api/projects/'+ idProject+ "/events",
	            headers: {'Authorization': 'Bearer '+myToken}
	        })				
			.then (function(res){
				deferred.resolve(res);
			},function(error){
				deferred.reject(error);
			})
			return deferred.promise;
	    }

		function getList(){
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

		function getOne(id){
	        var deferred=$q.defer();
			$http({
	            method: 'GET',
				skipAutorization:false,
	            url: 'http://agrimek.local/api/projects/'+id,
	            headers: {'Authorization': 'Bearer '+myToken}
	        })				
			.then (function(res){
				deferred.resolve(res);
			})
			.then (function(error){
				deferred.reject(error);
			})
			return deferred.promise;
	    }


		function setOne(data){
	        var fd = new FormData();
	        var deferred=$q.defer();
	        
	        for(var key in data)
	        	fd.append(key,data[key]);

			if (data.id){
				console.log('projectsService.setOne: EDIT')
				fd.append('_method','put')
				$http({
		            method: 'POST',
					skipAutorization:false,
		            url: 'http://agrimek.local/api/projects/'+data.id,
		            data: fd,
		            transformRequest: angular.identity,
		            headers: {'Content-Type': undefined, 'Authorization': 'Bearer '+myToken}
		        })				
				.then (function(res){
					deferred.resolve(res);
				})
				.then (function(error){
					deferred.reject(error);
				})
			} else {
				console.log('projectsService.setOne: ADD')
				$http({
		            method: 'POST',
		            skipAutorization:false,
		            url: 'http://agrimek.local/api/projects',
		            data: fd,
		            transformRequest: angular.identity,
		            headers: {'Content-Type': undefined, 'Authorization': 'Bearer '+myToken}
		        })				
				.then (function(res){
					deferred.resolve(res);
				})
				.then (function(error){
					deferred.reject(error);
				})
			}

			return deferred.promise;

		}

		function editOne(one){
	        var deferred=$q.defer();
			
			return deferred.promise;
		}
	}
})();