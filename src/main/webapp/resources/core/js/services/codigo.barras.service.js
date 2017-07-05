app.factory('CodigoBarrasService', ['$http', function($http){
	
	var _findByProduto = function(){
		return $http.get(SERVER_APP + '/codigobarras/findbyproduto');
	}
	
	return {
		
		findByProduto: _findByProduto
		
	}
}])