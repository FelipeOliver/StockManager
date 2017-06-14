<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<div class="content-wrapper" data-ng-controller="CategoriaController as cc">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Categoria
			<small>CRUD</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Categoria</a></li>
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
	                      <input type="text" class="form-control" disabled="disabled" data-ng-model="cc.categoria.id">
	                    </div>
	                    <div class="form-group">
	                      <label>Descrição</label>
	                      <input type="text" class="form-control" data-ng-model="cc.categoria.descricao">
	                    </div>
                  	</div><!-- /.box-body -->

					<div class="box-footer">
					  	<button type="button" class="btn btn-primary" data-ng-click="cc.save()">Save</button>
						<div class="pull-right">
						  	<button type="button" class="btn btn-danger" data-ng-disabled="!cc.podeSerDeletado()" 
						  			data-ng-click="cc.delete()">
						  		Delete
						  	</button>
						</div>
					</div>
                </form>				
				
			</div>
		</div>
		
		<div class="box">
        	<div class="box-header">
           		<h3 class="box-title">Categorias</h3>
           		<div class="pull-right">
           			<input class="form-control input-xs" data-ng-model="cc.filter"/>
           		</div>
         	</div><!-- /.box-header -->
			<div class="box-body">
  				<table class="table table-bordered table-striped">
    				<thead>
	      				<tr>
	        				<th>ID</th>
	        				<th>Descrição</th>
	        				<th><i class="fa fa-tasks"></i></th>
	      				</tr>
	    			</thead>
    				<tbody>
      					<tr data-ng-repeat="c in cc.categorias | filter: cc.filter">
					        <td data-ng-bind="c.id"></td>
					        <td data-ng-bind="c.descricao"></td>
					        <td>
					        	<a data-ng-click="cc.edit(c)" style="cursor: pointer;">
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