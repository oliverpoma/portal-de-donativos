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
	<title>Gracias</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="historial/css/styles.css">
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
          <img src="formulario/img/Login.png"/>
        </div>
        <h3 class="nombre-usuario">${sessionScope.miembro.nombre}</h3>
		  <p class="perfil-direccion principal"><strong>Direccion:</strong> ${sessionScope.miembro.direccion}</p>
		  <p class="perfil-telefono principal"><strong>Telefono:</strong>${sessionScope.miembro.telefono}</p>
		  <a class="nav-link" href="Controlador?op=toPerfil">Mi perfil</a>
		  <a class="nav-link" href="Controlador?op=toDonar">Haz tu donacion</a>
		  <a class="nav-link active" href="Controlador?op=doHistorial">Historial de donaciones</a>
		  <a class="nav-link" href="Controlador?op=doSalir">Salir</a>
      </div>
      <h1 class="titulo">Historial de Donativos</h1> 
      <div class="contenedor">
        <c:choose>
        <c:when test="${empty historial}">
        <div><br/><br/><h3>Aun no tienes donativos realizados en este momento</h3></div>
        </c:when>
        <c:when test="${!empty historial}">  
        <div class="tabla-donativos">
        <table class="table table-bordered">
                <thead>
                  <tr>
                    <th scope="col">ID DONATIVO</th>
                    <th scope="col">CONCEPTO</th>
                    <th scope="col">FECHA</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="n" items="${requestScope.historial}">
                  <tr>
                    <th scope="row">${n.idDonativo}</th>
                    <td>${n.conceptoProducto}</td>
                    <td>${n.fecha }</td>   
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