package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Capacitacion;

public class CapacitacionDAO {
	private static CapacitacionDAO instance;
    private Connection conexion;

    private CapacitacionDAO() {
        // Establecer la conexión a la base de datos en el constructor privado
        // Usar Singleton para asegurar que solo haya una instancia de UsuarioDAO
        // y una única conexión a la base de datos en todo el proyecto
        conexion = obtenerConexion(); // Implementar este método
    }

    public static CapacitacionDAO getInstance() {
        if (instance == null) {
        	instance = new CapacitacionDAO();
        }
        return instance;
    }

    public Connection obtenerConexion() {
        Connection conexion = null;

        try {
            // Cargar el driver de PostgreSQL
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer los detalles de la conexión
            String url = "jdbc:mysql://localhost:3306/prevencion_riesgos";
            String usuario = "root";
            String contraseña = "AcdL9237";

            // Establecer la conexión
            conexion = DriverManager.getConnection(url, usuario, contraseña);
            System.out.println("exito");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println(e+"no exito");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e+"no exito");
        }

        return conexion;
    }
    
    public List<Capacitacion> obtenerCapacitaciones() {
    	
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
    
    public void agregarCapacitacion(Capacitacion capacitacion) {
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
