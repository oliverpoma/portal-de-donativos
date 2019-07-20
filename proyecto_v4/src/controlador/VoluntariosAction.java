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

import entidades.Miembro;
import modelo.DaoMiembros;

/**
 * Servlet implementation class VoluntariosAction
 */
@WebServlet("/VoluntariosAction")
public class VoluntariosAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Autowired
	DaoMiembros dao;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Miembro>voluntarios=dao.getVoluntarios();
		request.setAttribute("voluntarios", voluntarios);
		request.getRequestDispatcher("administrador/voluntarios.jsp").forward(request, response);
	}

}
