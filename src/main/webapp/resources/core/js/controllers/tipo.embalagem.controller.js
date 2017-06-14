app.controller('TipoEmbalagemController', ['TipoEmbalagemService', function(TipoEmbalagemService){
	
	var self = this;
	self.tipos = [];
	self.tipoEmbalagem  = {};
	
	/*Método que carrega os dados iniciais na tela*/
	var _init = function(){
		self.atualizaLista();
	}
	
	/*Salva o Tipo de Embalagem caso já tenha sido criada, se não foi 
	 * criada ainda cria ela na base e gera um ID*/
	self.save = function(){
		TipoEmbalagemService.save(self.tipoEmbalagem)
		.then(function(resp){
			self.tipoEmbalagem = resp.data;
			self.atualizaLista();
		}, function(e){
			console.log(e);
		})
	}
	
	/*Deleta o tipo de embalagem e atualiza a lista*/
	self.delete = function(){
		TipoEmbalagemService.delete(self.tipoEmbalagem.id)
		.then(function(resp){
			self.tipoEmbalagem = {};
			self.atualizaLista();
		}, function(e){
			console.log(e);
		})
	}
	
	/*Atualiza a lista com os tipos de Embalagem que já foram salvas*/
	self.atualizaLista = function(){
		TipoEmbalagemService.findAll()
		.then(function(resp){
			self.tipos = resp.data;
		}, function(e){
			console.log(e);
		});		
	}
	
	/*Método que informa se o registro pode ser apagado*/
	self.podeSerDeletado = function(){
		var idDiferenteNulo = self.tipoEmbalagem.id != null && self.tipoEmbalagem.id != undefined && self.tipoEmbalagem.id != '';
		return idDiferenteNulo;
	}
	
	/*Método que pega o registro da tabela e coloca no form de alteração*/
	self.edit = function(tipoEmbalagem){
		self.tipoEmbalagem = Object.assign({}, tipoEmbalagem);
	}
	
	_init();
}]);