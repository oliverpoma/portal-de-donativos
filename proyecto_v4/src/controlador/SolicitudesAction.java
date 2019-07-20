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
import entidades.Solicitud;
import modelo.DaoSolicitudes;

/**
 * Servlet implementation class SolicitudesAction
 */
@WebServlet("/SolicitudesAction")
public class SolicitudesAction extends HttpServlet {
	
	@Autowired
	DaoSolicitudes daoS;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Solicitud>solicitudes=daoS.getSolicitudes();
		request.setAttribute("solicitudes", solicitudes);
		request.getRequestDispatcher("administrador/solicitudes.jsp").forward(request, response);
	}

}
