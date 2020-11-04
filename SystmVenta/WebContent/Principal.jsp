<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Sistema de ventas </title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed" >

<div class="wrapper">
 
  <nav class="main-header navbar navbar-expand  navbar-dark bg-dark" style="padding:13px; ">
    <ul class="navbar-nav ">
   
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../index3.html" class="nav-link">Inicio</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contactanos</a>
      </li>
    </ul>
	    <ul class="navbar-nav ml-auto">
	       <li class="dropdown">
			       <button style="border:none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			        <a>${usuario.getUser()}</a>
			       </button>
			     <div class="dropdown-menu text-center">
				    <a class="dropdown-item" href="#">
				       <img src="img/log.png" alt="60" width="60"/>
				    </a>
				    <a class="dropdown-item" href="#">usuario@gmail.com</a>
				    <div class="dropdown-dividir"></div>
				    <form action="Validar" method="post">
				       <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
				    </form>
			    </div>
	        </li>
	    </ul>
</nav>
</div>
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
<div class="sidevar">

      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">${usuario.getNom() }</a>
        </div>
      </div>
 
      
    

    <nav class="mt-2">
     <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
       <li class="nav-item">
       <i class="nav-icon fas fa-th"></i>
         <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="#">Home</a>
       </li>
       <li class="nav-item">
       
       <form action="Controlador?menu=Producto" target="myFrame" method="POST"  ><i class="nav-icon fas fa-th"></i>
        <button type="submit" name="accion" value="Listar"  class="btn btn-outline-light" style="border:none ">Producto</button>
        </form>
       </li>
        <li class="nav-item">
        
        <form action="Controlador?menu=Empleado" target="myFrame" method="POST"  > <i class="nav-icon fas fa-th"></i>
        <button type="submit" name="accion" value="Listar"  class="btn btn-outline-light" style="border:none ">Empleados</button>
        
        </form>
<!--        <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleado</a> -->
       </li>
        <li class="nav-item">
       <form action="Controlador?menu=Cliente" target="myFrame" method="POST"  > <i class="nav-icon fas fa-th"></i>
        <button type="submit" name="accion" value="Listar"  class="btn btn-outline-light" style="border:none ">Clientes</button>
        
        </form>
       </li>
        <li class="nav-item">
       <form action="Controlador?menu=NuevaVenta&accion=default" target="myFrame" method="POST"  > <i class="nav-icon fas fa-th"></i>
        <button type="submit" name="accion" value=""  class="btn btn-outline-light" style="border:none ">Nueva venta</button>
        
        </form>
       </li>
       
     </ul>
    </nav>
    
</div>
  </aside>


<div class="m" style="height: 555px; padding-left: 17%">
	<iframe name="myFrame" style="height: 100%; width:100%">
	</iframe>
	
</div>


<script src="plugins/jquery/jquery.min.js"></script>

<script src="plugins/jquery-ui/jquery-ui.min.js"></script>

<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>

<script src="dist/js/adminlte.js"></script>

<script src="dist/js/pages/dashboard.js"></script>

<script src="dist/js/demo.js"></script>
</body>
</html>