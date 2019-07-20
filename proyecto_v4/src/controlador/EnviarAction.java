package controlador;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import entidades.Mensaje;
import entidades.Miembro;
import modelo.DaoMensajes;

/**
 * Servlet implementation class EnviarAction
 */
@WebServlet("/EnviarAction")
public class EnviarAction extends HttpServlet {
	
	@Autowired
	DaoMensajes dao;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Mensaje mensaje = new Mensaje(0,request.getParameter("email"), new Date(), request.getParameter("mensaje"), request.getParameter("nombre"), Integer.parseInt(request.getParameter("telefono")));
		dao.nuevoMensaje(mensaje);
		request.getRequestDispatcher("voluntario/graciasv.jsp").forward(request, response);;
	}

}
