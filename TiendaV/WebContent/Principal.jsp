<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="collapse navbar-collapse " id="navbarNav">
     <ul class="navbar-nav ">
       <li class="nav-item active">
         <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="#">Home</a>
       </li>
       <li class="nav-item">
       <form action="Controlador?menu=Producto" target="myFrame" method="POST"  >
        <button type="submit" name="accion" value="Listar"  class="btn btn-outline-light" style="border:none ">Producto</button>
        </form>
       </li>
        <li class="nav-item">
        <form action="Controlador?menu=Empleado" target="myFrame" method="POST"  >
        <button type="submit" name="accion" value="Listar"  class="btn btn-outline-light" style="border:none ">Empleados</button>
        
        </form>
<!--        <a style="margin-left: 10px; border: none" class="btn btn-outline-light" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleado</a> -->
       </li>
        <li class="nav-item">
       <form action="Controlador?menu=Cliente" target="myFrame" method="POST"  >
        <button type="submit" name="accion" value="Listar"  class="btn btn-outline-light" style="border:none ">Clientes</button>
        
        </form>
       </li>
        <li class="nav-item">
       <form action="Controlador?menu=NuevaVenta&accion=default" target="myFrame" method="POST"  >
        <button type="submit" name="accion" value=""  class="btn btn-outline-light" style="border:none ">Nueva venta</button>
        
        </form>
       </li>
     </ul>
    </div>
      <div class="dropdown">
       <button style="border:none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <a>${usuario.getNom() }</a>
       </button>
	     <div class="dropdown-menu text-center">
		    <a class="dropdown-item" href="#">
		       <img src="img/log.png" alt="60" width="60"/>
		    </a>
		    <a class="dropdown-item" href="#"> ${usuario.getUser()}</a>
		    <a class="dropdown-item" href="#">usuario@gmail.com</a>
		    <div class="dropdown-dividir"></div>
		    <form action="Validar" method="post">
		       <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
		    </form>
	    </div>
    </div>
</nav>
<div class="m-3" style="height: 520px">
	<iframe name="myFrame" style="height: 100%; width:100%">
	</iframe>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script> 
</body>
</html>