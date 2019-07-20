<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose>
<c:when test="${empty sessionScope.miembro}">        
<!DOCTYPE html>
<html>
<head></head>
<body><h2>Usted debe iniciar sesion nuevamente</h2><br/><br/><br/><br/><a href="Controlador?op=toIndex">Volver a inicio</a></body>
</html>
</c:when>
<c:when test="${!empty sessionScope.miembro}"> 
<!DOCTYPE html>
<html>
<head>
	<title>GRACIAS</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="graciasSolicitud/css/styles.css">
</head>
<body>
	<div class="nav2 flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <div class="col-12 user-img">
          <img src="formulario/img/Login.png"/>
        </div>
        <h3 class="nombre-usuario">Miguel Rodriguez</h3>
        <p class="perfil-direccion principal"><strong>Direccion:</strong> Calle de Atocha, 24</p>
  	<a class="nav-link" href="Controlador?op=toPerfil">Mi perfil</a>
  	<a class="nav-link active" href="Controlador?op=toDonar">Haz tu donacion</a>
  	<a class="nav-link" href="Controlador?op=doHistorial">Historial de donaciones</a>
  	<a class="nav-link" href="Controlador?op=doSalir">Salir</a>
</div>
<div class="contenedor">
<img src="graciasSolicitud/img/otros.jpg">
<h2>Muchas gracias por tu solicitud</h2>
<h3>Nos pondremos en contacto contigo lo mas rapido posible</h3>
</div>
</body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
</c:when>
</c:choose>