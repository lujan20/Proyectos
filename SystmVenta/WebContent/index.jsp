<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>     
        <title>tienda virtual</title>
</head>
<body>
<div class="col-xs-12 col-sm-4 col-sm-offset-4"> 
     <div class="card col-sm-10">
       <div class="card-body ">
	      <form class="form-sign" action="Validar" method="POST">
          <div class="form-group text-center">
               <h2>Sistemas de Ventas </h2>
                <img src="img/log.png" alt="60" width="60"/>
               <br>
               
          </div>
           <div class="form-group">
              <label>Usuario</label>
              <input type="text" name="txtuser" class="form-control"/>      
          </div>
           <div class="form-group">
              <label>Contraseña</label>
              <input type="password" name="txtpass" class="form-control"/>    
            </div>
              <input type="submit" name="accion" value="Ingresar"class="btn btn-primary"/>
         </form>
</div>
</div>
</div>

 <script src="js/jquery.js" type="text/javascript"></script>             
 <script src="js/bootstrap.min.js" type="text/javascript"></script>   
</body>
</html>