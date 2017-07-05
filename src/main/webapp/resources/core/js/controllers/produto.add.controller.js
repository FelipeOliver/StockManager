app.controller('ProdutoAddController', ['CategoriaService', 'TipoEmbalagemService','ProdutoService', 'CodigoBarrasService',
							    function(CategoriaService, TipoEmbalagemService, ProdutoService, CodigoBarrasService){
	
	var self = this;
	self.produto        		= {};
	self.categorias 			= [];
	self.tipoEmbalagens 		= [];
	self.produtos       	 	= [];
	self.codigosDeBarrasProduto = [];
	
	var _init = function(){
		//Pega as categorias
		self.atualizaListaCategorias();
		//Pega os tipos de embalagem
		self.atualizaListaTipoEmbalagens();
		//Pega todos os produtos já cadastrados
		self.atualizaListaProdutos();
	}

	/********************************************************************
	* Atualiza a lista com as categorias que já foram salvas  			*
	********************************************************************/
	self.atualizaListaCategorias = function(){
		CategoriaService.findAll()
		.then(function(resp){
			self.categorias = resp.data;
		}, function(e){
			console.log(e);
		});		
	}

	/******************************************************************** 
	* Atualiza a lista com os tipos de Embalagem que já foram salvas  	*
	********************************************************************/
	self.atualizaListaTipoEmbalagens = function(){
		TipoEmbalagemService.findAll()
		.then(function(resp){
			self.tipoEmbalagens = resp.data;
		}, function(e){
			console.log(e);
		});		
	}
	
	/********************************************************************
	* Atualiza a lista com todo os produtos já cadastrados na base     	*
	********************************************************************/
	self.atualizaListaProdutos = function(){
		ProdutoService.findAll()
		.then(function(resp){
			self.produtos = resp.data;
		}, function(e){
			console.log(e);
		})
	}
	
	/********************************************************************	
	* Salva o Produto caso já tenha sido criada, se não foi criada 		* 
	* ainda cria ela na base e gera um ID					    		*
	********************************************************************/
	self.save = function(){
		ProdutoService.save(self.produto)
		.then(function(resp){
			self.produto = resp.data;
			self.atualizaListaProdutos();
		}, function(e){
			console.log(e);
		})
	}
	
	/********************************************************************
	* Método que delete o Produto, caso o mesmo já tenha sido salvo     *
	********************************************************************/
	self.delete = function(){
		ProdutoService.delete(self.produto)
		.then(function(resp){
			console.log(resp);
			self.atualizaListaProdutos();
		}, function(e){
			console.log(e);
		})
	}
	
	/********************************************************************
	* Método que pega um elemento da lista de Produtos e o coloca em 	*
	*  edição 															*
	********************************************************************/
	self.edit = function(p){
		self.produto =  Object.assign({}, p);
	}
	
	/********************************************************************
	* Método que informa se o registro pode ser apagado 				* 
	********************************************************************/
	self.podeSerDeletado = function(){
		var idDiferenteNulo = self.produto.codigo != null && self.produto.codigo != undefined && self.produto.codigo != '';
		return idDiferenteNulo;
	}
	
	/********************************************************************
	* Verifica se é possível mostrar o form de add código de barras     *
	********************************************************************/
	self.isVisibleCodigosBarras = function(){
		//Verifica se o produto já esta gravado na base de dados
		var isProdutoGravado = self.produto.codigo != null && self.produto.codigo != undefined && self.produto.codigo != '';

		return isProdutoGravado;
	}
	
	_init();
}]);