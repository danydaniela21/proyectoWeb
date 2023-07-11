package cl.proyectoWeb.empresaAsesoria.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListarCapacitaciones
 */
@WebServlet("/ListarCapacitaciones")
public class ListarCapacitaciones extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarCapacitaciones() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("listarCapacitaciones.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = (String) request.getAttribute("nombre");
		String descripcion = (String) request.getAttribute("descripcion");
		String fecha = (String) request.getAttribute("fecha");
		String hora = (String) request.getAttribute("hora");

		request.setAttribute("nombre", nombre);
		request.setAttribute("descripcion", descripcion);
		request.setAttribute("fecha", fecha);
		request.setAttribute("hora", hora);

		// Redirigir la solicitud a ListarCapacitacion.jsp
		request.getRequestDispatcher("listarCapacitaciones.jsp").forward(request, response);
	}

}
