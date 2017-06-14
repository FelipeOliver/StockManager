<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="pt">

	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <title>Stock Manager</title>
	    
	    <!-- Bootstrap 3.3.2 -->
		<link href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<!-- Theme style -->
		<link href="${pageContext.request.contextPath}/resources/plugins/template/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
		<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
		<link href="${pageContext.request.contextPath}/resources/plugins/template/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
		<!-- Ionicons -->
		<link href="${pageContext.request.contextPath}/resources/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" type="text/css" />
	    <!-- Font Awesome Icons -->
    	<link href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

	</head>

	<body class="skin-blue fixed" data-ng-app="StockManager">

	    <!-- Site wrapper -->
	    <div class="wrapper">
	      
	      	<!-- Navigator -->
		  	<c:import url="core/menu_superior.jsp"></c:import>
	      	<!-- =============================================== -->
	
	      	<!-- Left side column. contains the sidebar -->
			<c:import url="core/menu_lateral.jsp"></c:import>
	     	<!-- =============================================== -->
	
			<!-- Content Wrapper. Contains page content -->
			<c:if test="${not empty content_import}">
				<c:import url="${content_import}"></c:import>
			</c:if>
	     	<!-- =============================================== -->
			
			<!-- Footer -->
			<c:import url="core/footer.jsp"></c:import>
	     	<!-- =============================================== -->
	
	    </div><!-- ./wrapper -->		
	
	</body>

	<!-- jQuery 2.1.3 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- SlimScroll -->
    <script src="${pageContext.request.contextPath}/resources/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath}/resources/plugins/template/js/app.min.js" type="text/javascript"></script>
	 <!-- DATA TABES SCRIPT -->
    <script src="${pageContext.request.contextPath}/resources/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
	<!-- Angular 1.2.19 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/angularJs/angular.js"></script>
	
	<!-- AngularApp -->
    <script src="${pageContext.request.contextPath}/resources/core/js/app.js"></script>
    <!-- Services -->
    <script src="${pageContext.request.contextPath}/resources/core/js/services/categoria.service.js"></script>
    <script src="${pageContext.request.contextPath}/resources/core/js/services/tipo.embalagem.service.js"></script>
    <!-- Controllers -->
    <script src="${pageContext.request.contextPath}/resources/core/js/controllers/categoria.controller.js"></script>
    <script src="${pageContext.request.contextPath}/resources/core/js/controllers/tipo.embalagem.controller.js"></script>
	
</html>
