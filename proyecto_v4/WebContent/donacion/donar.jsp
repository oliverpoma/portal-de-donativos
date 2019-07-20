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
	<title>Tu Donacion</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="donacion/asset/css/style.css">
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
		<img src="donacion/asset/img/Login.png"/>
	</div>
  <h3 class="nombre-usuario">${sessionScope.miembro.nombre}</h3>
  <p class="perfil-direccion principal"><strong>Direccion:</strong> ${sessionScope.miembro.direccion}</p>
  <p class="perfil-telefono principal"><strong>Telefono:</strong>${sessionScope.miembro.telefono}</p>
  <a class="nav-link" href="Controlador?op=toPerfil">Mi perfil</a>
  <a class="nav-link active" href="Controlador?op=toDonar">Haz tu donacion</a>
  <a class="nav-link" href="Controlador?op=doHistorial">Historial de donaciones</a>
  <a class="nav-link" href="Controlador?op=doSalir">Salir</a>
</div>

<div class="contenedor">
	<h1 class="titulo">Realiza tu Donativo</h1> 
	<div class="categoria">
		<img src="donacion/asset/img/vestimenta.jpg"><p>VESTIMENTA</p>
		<div class="subcategorias">
			<div class="subcategoria" onclick="solicitarrh()">
				<img src="donacion/asset/img/vestimenta.jpg"><p>ROPA HOMBRE</p>
			</div>
			<div class="subcategoria" onclick="solicitarrm()">
				<img src="donacion/asset/img/vestimenta.jpg"><p>ROPA MUJER</p>
			</div>
			<div class="subcategoria" onclick="solicitarrn()">
				<img src="donacion/asset/img/vestimenta.jpg"><p>ROPA NIÑO</p>
			</div>
			<div class="subcategoria" onclick="solicitaram()">
				<img src="donacion/asset/img/vestimenta.jpg"><p>ACCESORIOS<br>MODA</p>
			</div>		
		</div>
	</div>
	<div class="categoria">
		<img src="donacion/asset/img/informatica.jpg"><p>ELECTRONICOS</p>
		<div class="subcategorias">
			<div class="subcategoria" onclick="solicitarit()">
				<img src="donacion/asset/img/informatica.jpg"><p>INFORMATICA<br>Y TELEFONIA</p>
			</div>
			<div class="subcategoria" onclick="solicitarpe()">
				<img src="donacion/asset/img/informatica.jpg"><p>PEQUEÑO<br>ELECTRODOMESTICO</p>
			</div>	
		</div>
	</div>
	<div class="categoria">
		<img src="donacion/asset/img/escolar.jpg"><p>MAT. ESCOLAR</p>
		<div class="subcategorias">
			<div class="subcategoria" onclick="solicitarp()">
				<img src="donacion/asset/img/escolar.jpg"><p>PAPELERIA</p>
			</div>
			<div class="subcategoria" onclick="solicitarl()">
				<img src="donacion/asset/img/escolar.jpg"><p>LIBRERIA</p>
			</div>
			<div class="subcategoria" onclick="solicitara()">
				<img src="donacion/asset/img/escolar.jpg"><p>ACCESORIOS</p>
			</div>	
		</div>
	</div>
	<div  class="categoria" id="otros" onclick="solicitaro()">
		<img src="donacion/asset/img/otros.jpg"><p>OTROS</p>
	</div>
</div>

<div class="formularioi" id="formul">
	<h3 id="titulo">Donacion de </h3>
	<form id="form" method="post">
		<fieldset>
			<legend>Describa el concepto a donar</legend>
       		<label for="concepto">Concepto de donacion:</label>
	       	<input class="textinput" type="text" name="conceptoProducto" placeholder="Ej. Jerseys de invierno..." required/>
	       	<label for="detalles">Detalles de donacion (Opcional):</label>
	       	<textarea class="textinput" name="detalles" placeholder="Ej. Articulo a medio uso pero muy bien conservado..."></textarea>
	        <p>Indique su medios de contacto de preferencia</p>
		    <input type="checkbox" name="email"/> email
		    <input type="checkbox" name="telefono"/> Telefono
      	</fieldset>
      	<fieldset>
      		<br><input id="enviar" type="submit" value="Realizar Solicitud" >
      	</fieldset>    
	</form>
</div>
</body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript" src="donacion/asset/js/scriptt.js"></script>
</html>
</c:when>
</c:choose>