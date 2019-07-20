package controlador;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import modelo.DaoMensajes;

/**
 * Servlet implementation class ConfirmacionAction
 */
@WebServlet("/EliminarMAction")
public class EliminarMAction extends HttpServlet {
	
	@Autowired
	DaoMensajes dao;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idMensaje = Integer.parseInt(request.getParameter("idMensaje"));
		dao.eliminarMensaje(idMensaje);
		request.getRequestDispatcher("MensajesAction").forward(request, response);
		
	}

}
