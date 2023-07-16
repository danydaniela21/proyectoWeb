package implementacion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import interfaces.CapacitacionDAO;
import interfaces.ICapacitacionDAO;
import model.Capacitacion;

public class CapacitacionDAOImpl implements CapacitacionDAO {
	private Connection conexion;
	
	public CapacitacionDAOImpl() {
		conexion = ConexionBDImpl.obtenerInstancia().obtenerConexion();
	}
	
	@Override
	public List<Capacitacion> obtenerListaCapacitaciones() {

        List<Capacitacion> capacitaciones = new ArrayList<>();
        String consulta = "SELECT id, nombre, detalle FROM Capacitaciones";
        
        try (
        	 PreparedStatement statement = conexion.prepareStatement(consulta);
        		
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
            	Capacitacion capacitacion = new Capacitacion();
            	capacitacion.setId(resultSet.getInt("id"));
            	capacitacion.setNombre(resultSet.getString("nombre"));
            	capacitacion.setDetalle(resultSet.getString("detalle"));
            	capacitaciones.add(capacitacion);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return capacitaciones;
	}

	@Override
	public void registrarCapacitacion(Capacitacion capacitacion) {
		String consulta = "INSERT INTO Capacitaciones (nombre, detalle) VALUES (?, ?)";

        try (
        		
        	PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setString(1, capacitacion.getNombre());
            statement.setString(2, capacitacion.getDetalle());
            
            statement.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
	}

}
