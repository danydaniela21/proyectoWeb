package implementacion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import interfaces.UsuarioDAO;
import model.Administrativo;
import model.Cliente;
import model.Profesional;
import model.Usuario;

public class UsuarioDAOImpl implements UsuarioDAO {
	private Connection conexion;
	
	public UsuarioDAOImpl() {
		conexion = ConexionBDImpl.obtenerInstancia().obtenerConexion();
	}
	
	@Override
	public List<Usuario> obtenerListaUsuario() {
		List<Usuario> usuarios = new ArrayList<>();
        String consulta = "SELECT id, nombre, tipo, fechaNacimiento, rut, area, experiencia, telefono, afp, sistemaSalud, direccion, comuna, edad, titulo, fechaIngreso FROM Usuarios";
        
        try (PreparedStatement statement = conexion.prepareStatement(consulta);
                ResultSet resultSet = statement.executeQuery()) {

               while (resultSet.next()) {
                   String tipoUsuario = resultSet.getString("tipo");
                   Usuario usuario = null;

                   switch (tipoUsuario) {
                       case "Administrativo":
                           usuario = new Administrativo();
                           ((Administrativo) usuario).setArea(resultSet.getString("area"));
                           ((Administrativo) usuario).setExperiencia(resultSet.getString("experiencia"));
                           break;
                       case "Cliente":
                           usuario = new Cliente();
                           ((Cliente) usuario).setTelefono(resultSet.getString("telefono"));
                           ((Cliente) usuario).setAfp(resultSet.getString("afp"));
                           ((Cliente) usuario).setSistemaSalud(resultSet.getInt("sistemaSalud"));
                           ((Cliente) usuario).setDireccion(resultSet.getString("direccion"));
                           ((Cliente) usuario).setComuna(resultSet.getString("comuna"));
                           ((Cliente) usuario).setEdad(resultSet.getInt("edad"));
                           break;
                       case "Profesional":
                           usuario = new Profesional();
                           ((Profesional) usuario).setTitulo(resultSet.getString("titulo"));
                           ((Profesional) usuario).setFechaIngreso(resultSet.getString("fechaIngreso"));
                           break;
                       default:
                           usuario = new Usuario();
                           break;
                   }

                   usuario.setId(resultSet.getInt("id"));
                   usuario.setNombre(resultSet.getString("nombre"));
                   usuario.setFechaNacimiento(resultSet.getString("fechaNacimiento"));
                   usuario.setRut(resultSet.getString("rut"));
                   usuario.setTipo(tipoUsuario);

                   usuarios.add(usuario);
               }
           } catch (SQLException e) {
               e.printStackTrace();
           }

           return usuarios;
        
	}

	@Override
	public void registrarUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		
	}

}
