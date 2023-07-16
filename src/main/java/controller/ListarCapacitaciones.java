package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import implementacion.CapacitacionDAOImpl;
import model.Capacitacion;


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
		CapacitacionDAOImpl capacitacionDAO = new CapacitacionDAOImpl();
        List<Capacitacion> capacitaciones = capacitacionDAO.obtenerListaCapacitaciones();
        request.setAttribute("capacitaciones", capacitaciones);
        request.getRequestDispatcher("listarCapacitaciones.jsp").forward(request, response);
        
    	/** Interface 
    	CapacitacionDAOImpl capacitacionDAO = new CapacitacionDAOImpl();
    	List<Capacitacion> capacitaciones = capacitacionDAO.obtenerListaCapacitaciones();
    	request.setAttribute("capacitaciones", capacitaciones);
        request.getRequestDispatcher("listarCapacitaciones.jsp").forward(request, response);**/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
