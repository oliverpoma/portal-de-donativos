<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>Contactanos</title>
		<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
		<link rel="stylesheet" href="contacto/css/styles.css">
	</head>

<body>
	<header class="site-header">
        <div class="contenedor contenido-header">
            <div class="barra">
                <a href="Controlador?op=toIndex">
                    <img style="position: absolute; width: 15%;" src="asset/img/logo2.png" alt="">
                </a>

                <div class="mobile-menu">
                    
                </div>

                <nav id="navegacion" class="navegacion">
                    <a href="Controlador?op=toNosotros">Nosotros</a>
                    <a href="Controlador?op=toContacto">Contacto</a>
                    <a href="Controlador?op=toRegistro">Registro</a>
                    <a href="Controlador?op=toLogin">Login</a>
                </nav>
            </div>
        </div> 

	</header>
	<main class="contenedor">
            <h1 class="fw-300 centrar-texto">Donde Estamos Ubicados</h1>
	
			<div class="contenido-nosotros">
				<div class="imagen">
					<img src="contacto/img/thumbnail_edificio-clase-a.jpg" alt="Imagen Sobre Nosotros">
				</div>
				<div class="texto-nosotros">
					<blockquote>Nuestra sede se encuentra en Madrid, en la zona este de la capital.</blockquote>
	
					<p>Nuestra función es poner nuestros conocimientos informáticos y tecnológicos a disposición tanto de los colaboradores, como de las entidades e instituciones sin ánimo de lucro, con los que trabajamos de forma desinteresada a fin de facilitar por un lado a los colaboradores el proceso de donar y por otro a las instituciones y entidades, la logística y gestión de las colaboraciones con el objetivo ayudar a los más desfavorecidos. Si quieres conocernos mejor, puedes ponerte en contacto con nosotros. </p>
                    
                    <h2><p><strong>Contacto</strong></h2></a></p>
					
                        <p><strong>Correo electrónico: </strong>colaborador@4Ong.es</p>
                            <p><strong>Teléfono:</strong> +34  914 800 338</p> 
                            <p><strong>Direccion:</strong> Avenida de Cantabria, 6 - 28042, Madrid, España</p>
				</div>
            </div>
            
            <h2 class="fw-300 centrar-texto">Llena el formulario de Contacto</h2>

        <form class="contacto" action="Controlador?op=doEnviar" method="post">
            <fieldset>
                <legend>Información Personal</legend>
                <label for="nombre">Nombre:</label>
                <input type="text" name="nombre" placeholder="Tu Nombre">

                <label for="email">E-mail: </label>
                <input type="email" name="email" placeholder="Tu Correo electrónico" required>

                <label for="telefono">Teléfono:</label>
                <input type="tel" name="telefono" placeholder="Tu Teléfono" required>

                <label for="mensaje">Mensaje: </label>
                <textarea  name="mensaje"></textarea>

            </fieldset>

            <input type="submit" value="Enviar" class="boton boton-verde">
      

        </form>

	</main>

</body>
    
<footer class="site-footer seccion">
        <div class="contenedor contenedor-footer">
            <nav class="navegacion">
                <a href="Controlador?op=toNosotros">Nosotros</a>
                <a href="Controlador?op=toContacto">Contacto</a>
                <a href="Controlador?op=toRegistro">Registro</a>
                <a href="Controlador?op=toLogin">Login</a>
            </nav>
            <p class="copyright">Todos los Derechos Reservados 2019 &copy; </p>
        </div>
    </footer>
</body>

</html>