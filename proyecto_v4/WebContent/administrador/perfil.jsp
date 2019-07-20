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
    <title>Perfil</title>

    <!--JQUERY-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    <!-- Los iconos tipo Solid de Fontawesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <!-- Nuestro css-->
    <link rel="stylesheet" type="text/css" href="administrador/css/styles.css">

</head>
<body>
    <div class="nav2 flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    	<a class="nav-link active" href="Controlador?op=toPerfilAdmin">Mi perfil</a>
  		<a class="nav-link" href="Controlador?op=doSolicitudes">Historial de solicitudes</a>
  		<a class="nav-link" href="Controlador?op=doVoluntarios">Voluntarios</a>
  		<a class="nav-link" href="Controlador?op=doMensajes">Mensajes</a>
  		<a class="nav-link" href="Controlador?op=doSalir">Salir</a>
    </div>  

    <div style="float: left; width: 80%; padding-left: 10%">
        <div class="col-sm-8 main-section" style="text-align: center;">
            <div class="modal-content">
                <div class="col-12 user-imga">
                    <img src="administrador/img/Login.png"/>
                </div>
                <a href="#" class="link-img">Cambiar imagen de perfil</a>
                <form class="col-12" action="../donacion/index.html" method="post">
                    <h1 class="text-center header">Mi Perfil</h1>
                    <div class="form-group">
                            <label for="exampleFormControlInput1" class="KKK"  style="text-align:center">Nombre y Apellido</label>
                            <input name="nombre" type="text" class="JJJ" id="exampleFormControlInput1" placeholder="nombre y apellido" value="${sessionScope.miembro.nombre}"  style="text-align:center">
                    </div>
                    <div class="form-group">
                            <label for="exampleFormControlInput1" class="KKK"  style="text-align:center">Direccion de Correo Electronico</label>
                            <input name="email" type="email" class="JJJ" id="exampleFormControlInput1" placeholder="Email@correo.com" value="${sessionScope.miembro.email}"  style="text-align:center">
                    </div>
                    <div class="form-group">
                            <label for="exampleFormControlInput1" class="KKK"  style="text-align:center">Direccion de Domicilio</label>
                            <input name="direccion" type="text" class="JJJ" id="exampleFormControlInput1" placeholder="" value="${sessionScope.miembro.direccion}"  style="text-align:center">
                    </div>
                    <div class="form-group">
                            <label for="exampleFormControlInput1" class="KKK"  style="text-align:center">Numero de Telefono </label>
                            <input name="telefono" type="text" class="JJJ" id="exampleFormControlInput1" placeholder="123456789" value="${sessionScope.miembro.telefono}"style="text-align:center">
                    </div>
                    <div class="col-12 forgot">
                            <a href="toCambiarAdmin">Cambiar Contraseña</a>
                    </div>
                    
                    <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> GUARDAR CAMBIOS</button>
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>
</c:when>
</c:choose>