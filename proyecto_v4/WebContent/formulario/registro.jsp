<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <title>Registro</title>

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
                    <img src="formulario/img/Login.png" th:src="@{/img/login.png}"/>
                </div>
                <form class="col-12" action="RegistrarAction" method="post">
                    <legend class="text-center header">REGISTRATE</legend>
                    <div class="form-group" id="user-group">
                        <input type="text" class="form-control" placeholder="Nombre y Apellidos" name="nombre" required="required"/>
                    </div>
                    <div class="form-group" id="dni-group">
                        <input type="text" class="form-control" placeholder="DNI" name="idDni" required="required"/>
                    </div>
                    <div class="form-group" id="direction-group">
                        <input type="text" class="form-control" placeholder="Direccion" name="direccion" required="required"/>
                      </div>
                    <div class="form-group" id="email-group">
                        <input type="email" class="form-control" placeholder="Correo Electronico" name="email" required="required"/>
                    </div>
                    <div class="form-group" id="contrasena-group">
                        <input type="password" class="form-control" placeholder="Contraseña" name="password" required="required"/>
                    </div>
                    <div class="form-group" id="contrasena-group">
                        <input type="number" class="form-control" placeholder="Telefono" name="telefono" required="required"/>
                    </div>
                    <div class="form-group">
                        <label class="text-center header"> Selecciona un perfil </label>
                        <select class="form-control" name="idRol" required="required">
                          <option value="2">Donador</option>
                          <option value="3">Voluntario</option>
                        </select>
                      </div>
                    <div class="form-check" id="check-group">
                        <input class="form-group-input" type="checkbox" id="gridCheck1" required="required">
                        <label class="form-group-label" for="gridCheck1">Soy mayor de edad.
                     </label>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> REGISTRATE </button>
                </form>
            </div>
            <div class="col-12 forgot">
		            <a href="Controlador?op=toIndex">VOLVER A INICIO</a>
                </div>
        </div>
    </div>
</body>
</html>