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

import entidades.Miembro;
import modelo.DaoMiembros;

@WebServlet("/CambiarAction")
public class CambiarAction extends HttpServlet {
	
	@Autowired
	DaoMiembros dao;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Miembro m = (Miembro) request.getSession().getAttribute("miembro");
		String antiguo=request.getParameter("antiguo");
		String nuevo=request.getParameter("nuevo");
		
		dao.actualizarPassword(m.getIdDni(), antiguo, nuevo);
		
		request.getRequestDispatcher("LoginAction?email="+m.getEmail()+"&password="+nuevo).forward(request, response);
	}

}
