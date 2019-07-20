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

import entidades.Donativo;
import entidades.Miembro;
import modelo.DaoDonativos;

/**
 * Servlet implementation class MensajesAction
 */
@WebServlet("/HistorialAction")
public class HistorialAction extends HttpServlet {
	@Autowired
	DaoDonativos dao;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Miembro miembro=(Miembro) request.getSession().getAttribute("miembro");
		request.setAttribute("historial", dao.getDonativosIdDni(miembro.getIdDni()));
		request.getRequestDispatcher("historial/historial.jsp").forward(request, response);
		
	}

}
