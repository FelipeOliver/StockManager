app.controller('CategoriaController', ['CategoriaService', function(CategoriaService){
	
	var self = this;
	self.categorias = [];
	self.categoria  = {};
	
	/*Método que carrega os dados iniciais na tela*/
	var _init = function(){
		self.atualizaLista();
	}
	
	/*Salva a categoria caso já tenha sido criada, se não foi 
	 * criada ainda cria ela na base e gera um ID*/
	self.save = function(){
		CategoriaService.save(self.categoria)
		.then(function(resp){
			self.categoria = resp.data;
			self.atualizaLista();
		}, function(e){
			console.log(e);
		})
	}
	
	/*Deleta a categoria e atualiza a lista*/
	self.delete = function(){
		CategoriaService.delete(self.categoria.id)
		.then(function(resp){
			self.categoria = {};
			self.atualizaLista();
		}, function(e){
			console.log(e);
		})
	}
	
	/*Atualiza a lista com as categorias que já foram salvas*/
	self.atualizaLista = function(){
		CategoriaService.findAll()
		.then(function(resp){
			self.categorias = resp.data;
		}, function(e){
			console.log(e);
		});		
	}
	
	/*Método que informa se o registro pode ser apagado*/
	self.podeSerDeletado = function(){
		var idDiferenteNulo = self.categoria.id != null && self.categoria.id != undefined && self.categoria.id != '';
		return idDiferenteNulo;
	}
	
	/*Método que pega o registro da tabela e coloca no form de alteração*/
	self.edit = function(categoria){
		self.categoria = Object.assign({}, categoria);
	}
	
	_init();
}]);