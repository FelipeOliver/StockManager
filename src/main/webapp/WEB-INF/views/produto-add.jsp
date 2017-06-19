<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<div class="content-wrapper" data-ng-controller="ProdutoAddController as pac">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Produtos em estoque
			<small>Adicionar</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Produtos em Estoque</a></li>
			<li class="active">Adicionar</li>
			<!--             <li><a href="#">Examples</a></li> -->
			<!--             <li class="active">Blank page</li> -->
		</ol>
	</section>
		
	<!-- Main content -->
	<section class="content">
		<div class="box box-warning">
			<div class="box-header">
			
			</div>
			<div class="box-body">
			
			   	<form role="form">
                	<div class="box-body">
	                    <div class="form-group">
	                      <label>ID</label>
	                      <input type="text" class="form-control" disabled="disabled" 
	                      		 data-ng-model="pac.produto.id">
	                    </div>
	                    <div class="form-group">
	                      <label>Descrição</label>
	                      <input type="text" class="form-control" 
	                      		 data-ng-model="pac.produto.descricao">
	                    </div>
	                    <div class="form-group">
	                      <label>Categoria</label>
	                       <select data-ng-model="pac.produto.categoria" class="form-control"
      								data-ng-options="c.descricao for c in pac.categorias track by c.id" >
      					   </select>
	                    </div>
	                    <div class="form-group">
	                      <label>Tipo de Embalagem</label>
	                       <select data-ng-model="pac.produto.tipoDeEmbalagem" class="form-control"
      								data-ng-options="c.descricao for c in pac.tipoEmbalagens track by c.id" >
      					   </select>
	                    </div>
                  	</div><!-- /.box-body -->

					<div class="box-footer">
					  	<button type="button" class="btn btn-primary" data-ng-click="pac.save()">
					  		Save
					  	</button>
						<div class="pull-right">
						  	<button type="button" class="btn btn-danger" data-ng-disabled="!pac.podeSerDeletado()" 
						  			data-ng-click="pac.delete()">
						  		Delete
						  	</button>
						</div>
					</div>
                </form>				
			
			
			</div>
		</div>
	</section><!-- /.content -->
</div><!-- /.content-wrapper -->