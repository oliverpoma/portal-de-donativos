<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose>
<c:when test="${empty sessionScope.miembro}">        
<!DOCTYPE html>
<html>
<head></head>
<body><h2>Usted debe iniciar sesion nuevamente</h2><br/><br/><br/><br/><a href="Controlador?op=toIndex">Volver a inicio</a></body>
</html>
</c:when>
<c:when test="${!empty sessionScope.miembro}"> <!DOCTYPE html>
<html>
<head>
	<title>Solicitudes</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="administrador/css/styles.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
	<!--JQUERY-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    <!-- Los iconos tipo Solid de Fontawesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
	<script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
	
</head>
<body>
    <div class="nav2 flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <div class="col-12 user-img">
          <img src="administrador/img/Login.png"/>
        </div>
        <h3 class="nombre-usuario">${sessionScope.miembro.nombre}</h3>
        <p class="perfil-direccion principal"><strong>Perfil:</strong> Administrador </p>
        <a class="nav-link" href="Controlador?op=toPerfilAdmin">Mi perfil</a>
  		<a class="nav-link active" href="Controlador?op=doSolicitudes">Historial de solicitudes</a>
  		<a class="nav-link" href="Controlador?op=doVoluntarios">Voluntarios</a>
  		<a class="nav-link" href="Controlador?op=doMensajes">Mensajes</a>
  		<a class="nav-link" href="Controlador?op=doSalir">Salir</a>
      </div>
      <h1 class="titulo">ULTIMAS SOLICITUDES</h1> 
      <div class="contenedor">
        <c:choose>
        <c:when test="${empty solicitudes}">
        <div><br/><br/><h3>No hay solicitudes pendientes en este momento</h3></div>
        </c:when>
        <c:when test="${!empty solicitudes}"> 
        <div class="tabla-donativos">
        <table class="table table-bordered">
                <thead>
                  <tr>
                    <th scope="col">TITULAR</th>
                    <th scope="col">CONCEPTO</th>
                    <th scope="col">FECHA</th>
                    <th scope="col">TELEFONO</th>
                    <th scope="col">EMAIL</th>
                    <th scope="col">CONFIMAR<br/>DONATIVO</th>                    
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="n" items="${requestScope.solicitudes}">
                  <tr>
                    <td>${n.miembro.nombre}</td>                  
                    <td>${n.conceptoProducto}</td>
                    <td>${n.fecha}</td>
                    <td>${n.miembro.telefono}</td>
                    <td><a href="mailto:${n.miembro.email}">${n.miembro.email}</a></td>
                    <td><a href="Controlador?op=doConfirmar&idSolicitud=${n.idDonativo}">Recibido</a></td>
                  </tr>
                 </c:forEach>
                </tbody>
              </table>
            </div>
            </c:when>
            </c:choose>
        </div>    
</body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</html>
</c:when>
</c:choose>