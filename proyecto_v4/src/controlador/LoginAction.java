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


@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	
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
			    String email=request.getParameter("email");
			    String password=request.getParameter("password");
				Miembro miembro=dao.loginMiembro(email, password);
				request.getSession().setAttribute("miembro",miembro);
				if (miembro!=null&&miembro.getIdRol()==1) {
					request.getRequestDispatcher("SolicitudesAction").forward(request,response);    
			    }else if(miembro!=null&&miembro.getIdRol()==2) {
			        request.getRequestDispatcher("donacion/donar.jsp").forward(request,response);
			    }else{
			    	request.getRequestDispatcher("formulario/login.jsp?error=error").forward(request,response);
			    }
			}
			catch(IOException ex) {
				ex.printStackTrace();
			}
		        
		}
	}


