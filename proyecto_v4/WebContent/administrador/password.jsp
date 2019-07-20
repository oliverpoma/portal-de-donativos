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
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <title>Cambiar Password</title>

    <!--JQUERY-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    <!-- Los iconos tipo Solid de Fontawesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <!-- Nuestro css-->
    <link rel="stylesheet" type="text/css" href="perfil/css/styles.css">

</head>
<body>

    <div class="nav2 flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <a class="nav-link active" href="Controlador?op=toPerfilAdmin">Mi perfil</a>
  		<a class="nav-link" href="Controlador?op=doSolicitudes">Historial de solicitudes</a>
  		<a class="nav-link active" href="Controlador?op=doVoluntarios">Voluntarios</a>
  		<a class="nav-link active" href="Controlador?op=doMensajes">Mensajes</a>
  		<a class="nav-link" href="Controlador?op=doSalir">Salir</a>
    </div>
    <div class="modal-dialog text-center">
        <div class="col-sm-8 main-section">
            <div class="modal-content">
                <form class="col-12" action="Controlador?op=doCambiar" method="post" >
                    <legend class="text-center header">Quieres Cambiar tu Contraseña?</legend>
                    <div class="form-group" id="contrasena-group">
                            <input type="password" class="form-control" placeholder="Inserte Antigua Contraseña " name="antiguo"/>
                    </div>
                    <div class="form-group" id="contrasena-group">
                        <input type="password" class="form-control" placeholder="Inserte Nueva Contraseña" name="nuevo"/>
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Cambiar </button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
</c:when>
</c:choose>