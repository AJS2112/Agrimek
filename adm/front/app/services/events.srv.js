(function(){
	'use strict';
	
	angular.module('myApp')
	.factory('eventsService',eventsService) 
	eventsService.$inject=['$http','$q','$httpParamSerializerJQLike','CONFIG'];

	function eventsService($http,$q,$httpParamSerializerJQLike,CONFIG){
		var myToken=sessionStorage.getItem("token");
		var one={};
		var mySrv = {
			delOne:delOne,
			getList:getList,
			getOne:getOne,
			one:one,
			setOne:setOne,
		}
		return mySrv;

		function delOne(id){
	        var deferred=$q.defer();
			$http({
	            method: 'DELETE',
				skipAutorization:false,
	            url: 'http://agrimek.local/api/events/'+id,
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

		function getList(){

	        var deferred=$q.defer();
			$http({
	            method: 'GET',
				skipAutorization:true,
	            url: 'http://agrimek.local/api/events',
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
	            url: 'http://agrimek.local/api/events/'+id
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
				console.log('eventsService.setOne: EDIT')
				fd.append('_method','put')
				$http({
		            method: 'POST',
					skipAutorization:false,
		            url: 'http://agrimek.local/api/events/'+data.id,
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
				console.log('eventsService.setOne: ADD')
				$http({
		            method: 'POST',
		            skipAutorization:false,
		            url: 'http://agrimek.local/api/events',
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
	}
})();