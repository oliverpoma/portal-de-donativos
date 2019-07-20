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
import modelo.DaoMiembros;

@WebServlet("/RegistrarAction")
public class RegistrarAction extends HttpServlet {
	
	@Autowired
	DaoMiembros dao;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {	
			Miembro miembro = new Miembro(request.getParameter("idDni"), request.getParameter("direccion"), request.getParameter("email"), Integer.parseInt(request.getParameter("idRol")), request.getParameter("nombre"), request.getParameter("password"), Integer.parseInt(request.getParameter("telefono")));
			
			dao.registrarMiembro(miembro);
			if(miembro.getIdRol()==3) {
				request.getRequestDispatcher("voluntario/graciasv.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("LoginAction?email="+miembro.getEmail()+"&password="+miembro.getPassword()).forward(request, response);
			}
		}	
		catch(IOException ex) {
			ex.printStackTrace();
		}
		
	}

}
