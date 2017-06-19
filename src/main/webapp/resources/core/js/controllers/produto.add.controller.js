app.controller('ProdutoAddController', ['CategoriaService', 'TipoEmbalagemService','ProdutoService',
							    function(CategoriaService, TipoEmbalagemService, ProdutoService){
	
	var self = this;
	self.produto        = {};
	self.categorias 	= [];
	self.tipoEmbalagens = [];
	
	var _init = function(){
		//Pega as categorias
		self.atualizaListaCategorias();
		//Pega os tipos de embalagem
		self.atualizaListaTipoEmbalagens();
	}

	/*********************************************************
	* Atualiza a lista com as categorias que já foram salvas *
	*********************************************************/
	self.atualizaListaCategorias = function(){
		CategoriaService.findAll()
		.then(function(resp){
			self.categorias = resp.data;
		}, function(e){
			console.log(e);
		});		
	}

	/****************************************************************** 
	* Atualiza a lista com os tipos de Embalagem que já foram salvas  *
	******************************************************************/
	self.atualizaListaTipoEmbalagens = function(){
		TipoEmbalagemService.findAll()
		.then(function(resp){
			self.tipoEmbalagens = resp.data;
		}, function(e){
			console.log(e);
		});		
	}
	
	/********************************************************************	
	* Salva o Tipo de Embalagem caso já tenha sido criada, se não foi   * 
	* criada ainda cria ela na base e gera um ID					    *
	********************************************************************/
	self.save = function(){
		console.log(self.produto);
		ProdutoService.save(self.produto)
		.then(function(resp){
			self.produto = resp.data;
		}, function(e){
			console.log(e);
		})
	}
	
	_init();
}]);