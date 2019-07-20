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

import entidades.Donativo;
import entidades.Solicitud;
import modelo.DaoDonativos;
import modelo.DaoSolicitudes;

/**
 * Servlet implementation class ConfirmacionAction
 */
@WebServlet("/ConfirmarAction")
public class ConfirmarAction extends HttpServlet {
	
	@Autowired
	DaoDonativos daoD;
	@Autowired
	DaoSolicitudes daoS;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idSolicitud = Integer.parseInt(request.getParameter("idSolicitud"));
		Solicitud s = daoS.getSolicitud(idSolicitud);
		Donativo confirmado=new Donativo(0,s.getConceptoProducto(),new Date(),s.getMiembro().getIdDni(),s.getIdSubcategoria());
		daoD.confirmarDonativo(confirmado);		
		daoS.eliminarSolicitud(idSolicitud);
		request.getRequestDispatcher("SolicitudesAction").forward(request, response);
		
	}

}
