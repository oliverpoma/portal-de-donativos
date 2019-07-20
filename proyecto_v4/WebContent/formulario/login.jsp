<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <title>Login</title>

    <!--JQUERY-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    <!-- Los iconos tipo Solid de Fontawesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <!-- Nuestro css-->
    <link rel="stylesheet" type="text/css" href="formulario/css/styles.css">

</head>
<body>
    <div class="modal-dialog text-center">
        <div class="col-sm-8 main-section">
            <div class="modal-content">
                <div class="col-12 user-img">
                    <img src="formulario/img/Login.png"/>
                </div>
                <form action="Controlador?op=doLogin" method="post"  class="col-12">
                    <legend class="text-center header">INGRESA</legend>
                    <div class="form-group" id="user-group">
                        <input type="text" class="form-control" placeholder="Email" name="email"/>
                    </div>
                    <div class="form-group" id="contrasena-group">
                        <input type="password" class="form-control" placeholder="Contrasena" name="password"/>
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Ingresar </button>
                </form>
                
                <div class="col-12 forgot">
                    <a href="Controlador?op=toRegistro">Eres nuevo ? Registrate !</a>
                </div>
                <div class="col-12 forgot">
                    <a href="#">¿Has olvidado tu contraseña?</a>
                </div>
                <div class="col-12 forgot">
		            <a href="Controlador?op=toIndex">VOLVER A INICIO</a>
                </div>
                <c:if test="${!empty param.error}">
                <div class="alert alert-danger" role="alert">
		            Email y/o contraseña invalidos.
		        </div>
		        </c:if>
            </div>
            <br/>
        </div>
    </div>
</body>
</html>