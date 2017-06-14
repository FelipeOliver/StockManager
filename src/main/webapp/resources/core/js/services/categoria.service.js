app.factory('CategoriaService', ['$http', function($http){
	
	var _findAll = function(){
		return $http.get(SERVER_APP + '/categoria/findall');
	}
	
	var _save = function(categoria){
		return $http.post(SERVER_APP + '/categoria/', categoria);
	}
	
	var _delete = function(id){
		return $http.get(SERVER_APP + '/categoria/delete/' + id);
	}
	
	return {
		
		findAll: _findAll,
		
		save: _save,
		
		delete: _delete
		
	}
}])