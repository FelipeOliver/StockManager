app.factory('ProdutoService', ['$http', function($http){
	
	var _save = function(produto){
		return $http.post(SERVER_APP + '/produto/', produto);
	}
	
	var _delete = function(id){
		return $http.get(SERVER_APP + '/produto/delete/' + id);
	}
	
	var _findAll = function(){
		return $http.get(SERVER_APP + '/produto/findall');
	}
	
	return {
		
		save: _save,
		
		delete: _delete,
		
		findAll: _findAll
		
	}
}])