package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import entidades.Mensaje;
import modelo.DaoMensajes;

/**
 * Servlet implementation class MensajesAction
 */
@WebServlet("/MensajesAction")
public class MensajesAction extends HttpServlet {
	@Autowired
	DaoMensajes dao;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Mensaje>mensajes=dao.getMensajes();
		request.setAttribute("mensajes", mensajes);
		request.getRequestDispatcher("administrador/mensajes.jsp").forward(request, response);
		
	}

}
