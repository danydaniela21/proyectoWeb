package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import implementacion.UsuarioDAOImpl;
import model.Usuario;

/**
 * Servlet implementation class EditarUsuario
 */
@WebServlet("/EditarUsuario")
public class EditarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
	    String tipo = request.getParameter("tipo");

	    if (id != null && tipo != null) {
	        UsuarioDAOImpl usuarioDAO = new UsuarioDAOImpl();
	        Usuario usuarioId = usuarioDAO.obtenerUsuarioPorId(Integer.parseInt(id), tipo);
	        
	        if (usuarioId != null) {
	            request.setAttribute("usuarioId", usuarioId);
	            request.setAttribute("tipo", tipo);
	            request.getRequestDispatcher("editarUsuario.jsp").forward(request, response);
	        } else {
	            //si el usuario no existe.
	            response.sendRedirect("error.jsp");
	        }
	    } else {
	        // parámetros no están presentes.
	        response.sendRedirect("error.jsp");
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
