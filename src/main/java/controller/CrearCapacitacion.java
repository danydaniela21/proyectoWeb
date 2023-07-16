package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		response.sendRedirect("crearCapacitacion.jsp");
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
		capacitacion.setNombre(nombre);
		capacitacion.setDetalle(capacitacion.mostrarDetalle(lugar, hora, Capacitacion.formatearFecha(fecha), duracion));

		CapacitacionDAOImpl capacitacionDAO = new CapacitacionDAOImpl();
		capacitacionDAO.registrarCapacitacion(capacitacion);
        request.getRequestDispatcher("mensajeExito.jsp").forward(request, response);
	}
	
}
