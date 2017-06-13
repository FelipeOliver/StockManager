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

  <body class="skin-blue fixed">
    <!-- Site wrapper -->
    <div class="wrapper">
      
      	<!-- Navigator -->
	  	<c:import url="menu_superior.jsp"></c:import>
      	<!-- =============================================== -->

      	<!-- Left side column. contains the sidebar -->
		<c:import url="menu_lateral.jsp"></c:import>

     	<!-- =============================================== -->

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Fixed Layout
            <small>Blank example to the fixed layout</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Examples</a></li>
            <li class="active">Blank page</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="callout callout-info">
            <h4>Tip!</h4>
            <p>Add the fixed class to the body tag to get this layout. The fixed layout is your best option if your sidebar is bigger than your content because it prevents extra unwanted scrolling.</p>
          </div>
          <!-- Default box -->
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Title</h3>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              Start creating your amazing application!
            </div><!-- /.box-body -->
            <div class="box-footer">
              Footer
            </div><!-- /.box-footer-->
          </div><!-- /.box -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 0.0.1
        </div>
        <strong>Copyright &copy; 2017-2018.</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->
		
		
	
	</body>

	<!-- jQuery 2.1.3 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- SlimScroll -->
    <script src="${pageContext.request.contextPath}/resources/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
<!--     <script src='../../plugins/fastclick/fastclick.min.js'></script> -->
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath}/resources/plugins/template/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
<!--     <script src="../../dist/js/demo.js" type="text/javascript"></script> -->
	
</html>
