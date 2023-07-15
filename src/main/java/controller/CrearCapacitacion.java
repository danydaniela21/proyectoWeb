package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conexion.CapacitacionDAO;
import implementacion.CapacitacionDAOImpl;
import model.Capacitacion;

/**
 * Servlet implementation class CrearCapacitacion
 */
@WebServlet("/CrearCapacitacion")
public class CrearCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearCapacitacion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("usuario") == null) {
	        response.sendRedirect("Login");
	    } else {
	    	response.sendRedirect("crearCapacitacion.jsp");
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String lugar = request.getParameter("lugar");
		String fecha = request.getParameter("fecha");
		String hora = request.getParameter("hora");
		String duracion = request.getParameter("duracion");
		
		Capacitacion capacitacion = new Capacitacion();
		capacitacion.setId(1);
		capacitacion.setNombre(nombre);
		capacitacion.setDetalle(capacitacion.mostrarDetalle(lugar, hora, Capacitacion.formatearFecha(fecha), duracion));

		
		
		CapacitacionDAO conexion = CapacitacionDAO.getInstance();
		
		try {
			conexion.agregarCapacitacion(capacitacion);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/**
		 * BBDD
		CapacitacionDAOImpl capacitacionDAO = new CapacitacionDAOImpl();
		capacitacionDAO.registrarCapacitacion(capacitacion);
		**/
        request.getRequestDispatcher("mensajeExito.jsp").forward(request, response);
	}
	
}
