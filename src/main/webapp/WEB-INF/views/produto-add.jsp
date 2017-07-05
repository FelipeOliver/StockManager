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
	                      <label>Código</label>
	                      <input type="text" class="form-control" disabled="disabled" 
	                      		 data-ng-model="pac.produto.codigo">
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

	                    <div class="form-group" data-ng-show="pac.isVisibleCodigosBarras()">
		                    <label>Código de Barras</label>
		                    <div class="input-group">
		                    	<input class="form-control" data-ng-model="pac.codigoBarras" />
		                    	<div class="input-group-btn">
			                    	<a class="btn btn-default"><i class="fa fa-check"></i></a>
		                    	</div>
<!-- 		                    	<div class="input-group-btn"> -->
<!-- 			                    	<a class="btn btn-danger"><i class="fa fa-remove"></i></a> -->
<!-- 		                    	</div> -->
		                    </div>
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
				
		<div class="box">
        	<div class="box-header">
           		<h3 class="box-title">Produtos</h3>
           		<div class="pull-right">
           			<input class="form-control input-xs" data-ng-model="pac.filter"/>
           		</div>
         	</div><!-- /.box-header -->
			<div class="box-body">
  				<table class="table table-bordered table-striped">
    				<thead>
	      				<tr>
	        				<th>Código</th>
	        				<th>Descrição</th>
	        				<th>Categoria</th>
	        				<th>Tipo de Embalagem</th>
	        				<th>Valor de Venda</th>
	        				<th><i class="fa fa-tasks"></i></th>
	      				</tr>
	    			</thead>
    				<tbody>
      					<tr data-ng-repeat="c in pac.produtos | filter: pac.filter">
					        <td data-ng-bind="c.codigo"></td>
					        <td data-ng-bind="c.descricao"></td>
					        <td data-ng-bind="c.categoria.descricao"></td>
					        <td data-ng-bind="c.tipoDeEmbalagem.descricao"></td>
					        <td data-ng-bind="c.valorVenda"></td>
					        <td>
					        	<a data-ng-click="pac.edit(c)" style="cursor: pointer;">
					        		<i class="fa fa-pencil"></i>
					        	</a>
					        </td>
      					</tr>
    				</tbody>
  				</table>
			</div><!-- /.box-body -->
		</div><!-- /.box -->
		
	</section><!-- /.content -->
</div><!-- /.content-wrapper -->