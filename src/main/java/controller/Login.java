package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        
        if (isValidUser(usuario, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);
            request.getRequestDispatcher("Inicio").forward(request, response);
        } else {
        	request.setAttribute("errorMessage", "Credenciales inválidas");
        	request.getRequestDispatcher("login.jsp").forward(request, response);
        }
	}
	
	private boolean isValidUser(String usuario, String password) {
        return usuario.equals("admin") && password.equals("1234");
    }

}
