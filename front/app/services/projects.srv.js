(function(){
	'use strict';
	
	angular.module('myApp')
	.factory('projectsService',projectsService) 
	projectsService.$inject=['$http','$q','$httpParamSerializerJQLike','CONFIG'];

	function projectsService($http,$q,$httpParamSerializerJQLike,CONFIG){
		var myToken=sessionStorage.getItem("token");
		var one={};
		var mySrv = {
			getList:getList,
			getEvents:getEvents,
			getProjects:getProjects
		}
		return mySrv;

		

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

	    function getProjects(){
	    	console.log('myToken',myToken)
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

	    function getEvents(idProject){
	    	myToken=sessionStorage.getItem("token");
	    	console.log('myToken on events',myToken)
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

		
	}
})();