<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body>
 <div class="d-flex">
  <div class="col-sm-5">
   <div class="card">
   <form action="Controlador?menu=NuevaVenta" method="post">
    <div class="card-body">
     <div class="form-group">
     <label>Datos del Cliente</label>
     </div>
     <div class="form-group d-flex">
	     <div class="col-sm-6 d-flex">
	      <input type="text" name="codigocliente" value="${c.getDni()}" class="form-control" placeholder="Codigo">
	      <button type="submit" name="accion" value="BuscarCliente" class="btn btn-outline btn btn-dark">BuscarCliente</button>
	     </div>
	     <div class="col-sm-6">
	     <input type="text" name="nombrescliente" value="${c.getNom()}" placeholder="Datos Cliente"class="form-control">
	     </div>
     </div>
     <div class="form-group">
        <label> Datos de Productos </label>
     </div>
     <div class="form-group d-flex">
	     <div class="col-sm-6 d-flex">
	      <input type="text" name="codigoproducto"  value="${producto.getId() }" class="form-control" placeholder="Codigo">
	      <button type="submit" name="accion" value="BuscarProducto" class="btn btn-outline btn btn-dark">BuscarProducto</button>
	     </div>
	     <div class="col-sm-6">
	     <input type="text" name="nomproducto" value="${producto.getNom()}" placeholder="Datos Producto"class="form-control">
	     </div>
     </div>
     
     <div class="form-group d-flex">
	     <div class="col-sm-6 d-flex">
	      	<input type="text" name="precio"  value="${producto.getPrecio()}" placeholder="s/ .0.00" class="form-control" >
	     </div>
	     <div class="col-sm-3 d-flex">
	      	<input type="number" name="cant" value="1" placeholder="" class="form-control" >
	     </div>
	     <div class="col-sm-3">
	    	 <input type="text" name="stock" placeholder="Stock"  value="${producto.getStock() }" class="form-control">
	     </div>
     </div>
      <div class="form-group">
	    	 <button type="submit" name="accion" value="Agregar" class="btn btn-outline btn btn-dark">Agregar</button>
	     </div>
    </div>
    </form>
   </div>
  </div>
  <div class="col-sm-7">
	  <div class="card" >
		  <div class="card-body">
			   <div class="d-flex col-sm-5 ml-auto">
				   <label>NumeroSerie:</label>
				   <input type="text" name="NroSerie" value="${nserie}" class="form-control">
			   </div>
			   <br>
			   <table class="table table-hover">
				   <thead>
					   <tr>
						   <th>Nro</th>
						   <th>Codigo</th>
						   <th>Descripcion</th>
						   <th>Precio</th>
						   <th>Cantidad</th>
						   <th>SubTotal</th>
						   <th>Accion</th>
					   </tr>
				   </thead>
				   		<tbody>
				   		<c:forEach var="list" items="${lista}">	
	   					 <tr>
							<td>${list.getItem()}</td>
							<td>${list.getIdproducto()}</td>
							<td>${list.getDescripcionP()}</td>
							<td>${list.getPrecio()}</td>
							<td>${list.getCantidad()}</td>
							<td>${list.getSubtotal()}</td>
							<td class="d-flex">
							<a href="#" class="fas fa-edit btn btn-outline-light" style="font-size:26px; color:black;"></a>
							<a href="#"  class="far fa-trash-alt btn btn-outline-light" style=" font-size:26px; color:black; margin-left:10px"></a>
							
                             
							</td>
							
						</tr>
		
					</c:forEach>
			   </table>
		  </div>
		   <div class="card-footer d-flex">
			  <div class="col-sm-6">
			  <a href="Controlador?menu=NuevaVenta&accion=GenerarVenta"> generar venta  </a>
				  
				   <input type="submit" name="accion" value="Cancelar" class="btn btn-dark">
			  </div>
			  <div class="col-sm-3 ml-auto">
			  		<input type="text" name="txtTotal" value=	"S/.${totalpagar}" class="form-control">
			  </div>
		  </div>
	  </div>
  </div>
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