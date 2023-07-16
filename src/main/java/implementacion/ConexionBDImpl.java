package implementacion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import interfaces.ConexionBD;

public class ConexionBDImpl implements ConexionBD {
	private static ConexionBDImpl instance;
    private Connection conexion;

    private ConexionBDImpl() {
        // Establecer la conexión a la base de datos en el constructor privado
        // Usar Singleton para asegurar que solo haya una instancia de UsuarioDAO
        // y una única conexión a la base de datos en todo el proyecto
        conexion = obtenerConexion(); // Implementar este método
    }

    public static ConexionBDImpl obtenerInstancia() {
        if (instance == null) {
        	instance = new ConexionBDImpl();
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
}
