<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<title>Insert title here</title>
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
				   <input type="text" name="NroSerie" class="form-control">
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
							<a href="#" class='fas fa-edit btn btn-outline-light' style="font-size:26px; color:black;"></a>
							<a href="#"  class="fa fa-trash btn btn-outline-light" style=" font-size:26px; color:black; margin-left:10px"></a>
							</td>
							
						</tr>
		
					</c:forEach>
			   </table>
		  </div>
		   <div class="card-footer d-flex">
			  <div class="col-sm-6">
				  <input type="submit" name="accion" value="Generar Venta" class="btn btn-dark">
				   <input type="submit" name="accion" value="Cancelar" class="btn btn-dark">
			  </div>
			  <div class="col-sm-3 ml-auto">
			  		<input type="text" name="txtTotal" value="${totalpagar}" class="form-control">
			  </div>
		  </div>
	  </div>
  </div>
 </div>
 
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script> 
 
</body>
</html>