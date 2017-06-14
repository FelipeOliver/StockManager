app.factory('TipoEmbalagemService', ['$http', function($http){
	
	var _findAll = function(){
		return $http.get(SERVER_APP + '/tipoembalagem/findall');
	}
	
	var _save = function(categoria){
		return $http.post(SERVER_APP + '/tipoembalagem/', categoria);
	}
	
	var _delete = function(id){
		return $http.get(SERVER_APP + '/tipoembalagem/delete/' + id);
	}
	
	return {
		
		findAll: _findAll,
		
		save: _save,
		
		delete: _delete
		
	}
}])