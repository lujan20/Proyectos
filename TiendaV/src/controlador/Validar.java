package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Empleado;
import modelo.EmpleadoDB;


//@WebServlet("/Validar")
public class Validar extends HttpServlet {
	EmpleadoDB edao=new EmpleadoDB();
	Empleado em=new Empleado();
	
	private static final long serialVersionUID = 1L;
       
  
    public Validar() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String accion=request.getParameter("accion");
		
		if(accion.equalsIgnoreCase("Ingresar")) {
			String user=request.getParameter("txtuser");
			String pass=request.getParameter("txtpass");
			em=edao.validar(user, pass);
			if(em.getUser()!=null){	
				request.setAttribute("usuario", em);//aqui dice empleado
				request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
			}else {
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}else {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
