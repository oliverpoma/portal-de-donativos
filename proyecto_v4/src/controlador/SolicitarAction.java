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

import entidades.Miembro;
import entidades.Solicitud;
import modelo.DaoSolicitudes;

/**
 * Servlet implementation class SolicitarAction
 */
@WebServlet("/SolicitarAction")
public class SolicitarAction extends HttpServlet {
	
	@Autowired
	DaoSolicitudes dao;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Miembro m=(Miembro) request.getSession().getAttribute("miembro");
		Solicitud solicitud = new Solicitud(0,request.getParameter("conceptoProducto"),new Date(),Integer.parseInt(request.getParameter("idSubcategoria")),m);
		dao.nuevaSolicitud(solicitud);
		request.getRequestDispatcher("graciasSolicitud/graciass.jsp").forward(request, response);	
	}

}
