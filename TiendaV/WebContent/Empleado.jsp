
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<title>Insert title here</title>
</head>
<body>
	<div class="d-flex">
	   <div class="card col-sm-4">
			<div class="card-body">
				<form action="Controlador?menu=Empleado" method="post">
					<div class="form-group"> 
						<label>Dni</label>
						<input type="text" value="${em.getDni()}" name="txtDni" class="form-control">
					</div>
					<div class="form-group">
						<label>Nombres</label>
						<input type="text" value="${em.getNom()}" name="txtNombres" class="form-control">
					</div>
					<div class="form-group">
						<label>Telefono</label>
						<input type="text"   value="${em.getTel()}" name="txtTel" class="form-control">
					</div>
					<div class="form-group">
						<label>Estado</label>
						<input type="text"  value="${em.getEstado()}"  name="txtEstado" class="form-control">
					</div>
					<div class="form-group">
						<label>Usuario</label>
						<input type="text" value="${em.getUser()}"  name="txtUser" class="form-control">
					</div>
					<input type="submit" name="accion" value="Agregar" class="btn  btn-dark">
					<input type="submit" name="accion" value="Actualizar" class="btn  btn-dark">
				</form>
			</div>
	    </div>
	

<div class="col-sm-8">
<table class="table table-hover  ">
	<thead class="bg-warning">
		<tr>
		    <th>ID</th>
			<th>DNI</th>
			<th>NOMBRE</th>
			<th>TELEFONO</th>
			<th>ESTADO</th>
			<th>USER</th>
		    <th>ACCIONES</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="em" items="${empleados}">	
	    <tr>
			
			<th>${em.getId()}</th>
			<th>${em.getDni()}</th>
			<th>${em.getNom()}</th>
			<th>${em.getTel()}</th>
			<th>${em.getEstado()}</th>
		    <th>${em.getUser()}</th>
		    
  
    
		    
		 <th class="d-flex">
		 
		 <form  action="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}"  method="POST"  >
        <button type="submit" class='fas fa-edit btn btn-outline-light' style="font-size:26px; color:black; border: none" ></button>
        </form>
        <form action="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}" method="POST"  style=" margin-left:10px" >
        <button type="submit"   class="fa fa-trash btn btn-outline-light" style=" font-size:26px; color:black; border:none" ></button>
        </form>
        
		 </th>
		</tr>
		
	</c:forEach>
	
	</tbody>
</table>
</div>
  </div>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script> 
 
</body>
</html>