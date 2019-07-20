package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String op=request.getParameter("op");
		String url="";
		
		switch(op) {
		case "doLogin":
			url="LoginAction";
			break;
		case "doHistorial":
			url="HistorialAction";
			break;
		case "toPerfil":
			url="perfil/perfil.jsp";
			break;
		case "toDonar":
			url="donacion/donar.jsp";
			break;
		case "toLogin":
			url="formulario/login.jsp";
			break;
		case "doSalir":
			url="SalirAction";
			break;
		case "doActualizar":
			url="ActualizarAction";
			break;
		case "toCambiar":
			url="perfil/password.jsp";
			break;
		case "doCambiar":
			url="CambiarAction";
			break;
		case "doSolicitar":
			url="SolicitarAction";
			break;
		case "toPerfilAdmin":
			url="administrador/perfil.jsp";
			break;
		case "doSolicitudes":
			url="SolicitudesAction";
			break;
		case "doVoluntarios":
			url="VoluntariosAction";
			break;
		case "doMensajes":
			url="MensajesAction";
			break;
		case "toCambiarAdmin":
			url="administrador/password.jsp";
			break;
		case "toRegistroAdmin":
			url="administrador/registroadmin.jsp";
			break;
		case "toRegistro":
			url="formulario/registro.jsp";
			break;
		case "toNosotros":
			url="nosotros/nosotros.jsp";
			break;
		case "toContacto":
			url="contacto/contacto.jsp";
			break;
		case "doEnviar":
			url="EnviarAction";
			break;
		case "doEliminarM":
			url="EliminarMAction";
			break;
		case "doConfirmar":
			url="ConfirmarAction";
			break;
		case "toIndex":
			url="index.jsp";
			break;
			
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}
