<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
  </div>
</body>
</html>