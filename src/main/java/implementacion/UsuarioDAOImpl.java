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
	    String consulta = "INSERT INTO Usuarios (nombre, tipo, fechaNacimiento, rut, area, experiencia, telefono, afp, sistemaSalud, direccion, comuna, edad, titulo, fechaIngreso) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	    try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
	        
	        switch (usuario.getTipo()) {
	            case "Administrativo":
	                Administrativo admin = (Administrativo) usuario;
	                statement.setString(1, usuario.getNombre());
	    	        statement.setString(2, usuario.getTipo());
	    	        statement.setString(3, usuario.getFechaNacimiento());
	    	        statement.setString(4, usuario.getRut());
	                statement.setString(5, admin.getArea());
	                statement.setString(6, admin.getExperiencia());
	                statement.setString(7, null);
	                statement.setString(8, null);
	                statement.setInt(9, 0);
	                statement.setString(10, null);
	                statement.setString(11, null);
	                statement.setInt(12, 0);
	                statement.setString(13, null);
	                statement.setString(14, null);
	                break;
	            case "Cliente":
	                Cliente cliente = (Cliente) usuario;
	                statement.setString(1, usuario.getNombre());
	    	        statement.setString(2, usuario.getTipo());
	    	        statement.setString(3, usuario.getFechaNacimiento());
	    	        statement.setString(4, usuario.getRut());
	                statement.setString(5, null);
	                statement.setString(6, null);
	                statement.setString(7, cliente.getTelefono());
	                statement.setString(8, cliente.getAfp());
	                statement.setInt(9, cliente.getSistemaSalud());
	                statement.setString(10, cliente.getDireccion());
	                statement.setString(11, cliente.getComuna());
	                statement.setInt(12, cliente.getEdad());
	                statement.setString(13, null);
	                statement.setString(14, null);
	                break;
	            case "Profesional":
	                Profesional profesional = (Profesional) usuario;
	                statement.setString(1, usuario.getNombre());
	    	        statement.setString(2, usuario.getTipo());
	    	        statement.setString(3, usuario.getFechaNacimiento());
	    	        statement.setString(4, usuario.getRut());
	                statement.setString(5, null);
	                statement.setString(6, null);
	                statement.setString(7, null);
	                statement.setString(8, null);
	                statement.setInt(9, 0);
	                statement.setString(10, null);
	                statement.setString(11, null);
	                statement.setInt(12, 0);
	                statement.setString(13, profesional.getTitulo());
	                statement.setString(14, profesional.getFechaIngreso());
	                break;
	            default:
	                break;
	        }

	        statement.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	@Override
	public Usuario obtenerUsuarioPorId(int id, String tipo) {
        Usuario usuarioId = null;
        String consulta = "SELECT id, nombre, tipo, fechaNacimiento, rut, area, experiencia, telefono, afp, sistemaSalud, direccion, comuna, edad, titulo, fechaIngreso  FROM Usuarios WHERE id = ? AND tipo=?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, id);
            statement.setString(2, tipo);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
               
                    switch(tipo) {
                    case "Administrativo":
                    	usuarioId = new Administrativo();
                    	usuarioId.setId(resultSet.getInt("id"));
                    	usuarioId.setNombre(resultSet.getString("nombre"));
                    	usuarioId.setTipo(resultSet.getString("tipo"));
                    	usuarioId.setFechaNacimiento(resultSet.getString("fechaNacimiento"));
                    	usuarioId.setRut(resultSet.getString("rut"));
                    	((Administrativo) usuarioId).setArea(resultSet.getString("area"));
                    	((Administrativo) usuarioId).setExperiencia(resultSet.getString("experiencia"));
                    	break;
                    case "Cliente":
                    	usuarioId = new Cliente();
                        ((Cliente) usuarioId).setTelefono(resultSet.getString("telefono"));
                        ((Cliente) usuarioId).setAfp(resultSet.getString("afp"));
                        ((Cliente) usuarioId).setSistemaSalud(resultSet.getInt("sistemaSalud"));
                        ((Cliente) usuarioId).setDireccion(resultSet.getString("direccion"));
                        ((Cliente) usuarioId).setComuna(resultSet.getString("comuna"));
                        ((Cliente) usuarioId).setEdad(resultSet.getInt("edad"));
                    	break;
                    case "Profesional":
                    	usuarioId = new Profesional();
                        ((Profesional) usuarioId).setTitulo(resultSet.getString("titulo"));
                        ((Profesional) usuarioId).setFechaIngreso(resultSet.getString("fechaIngreso"));
                    	break;
                    default:
                    	usuarioId = new Usuario();
                    	break;
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuarioId;
    }

	@Override
	public void actualizarUsuario(Usuario usuario) {
        String consulta = "UPDATE Usuarios SET nombre = ?, fechaNacimiento = ?, rut = ?, area = ?, experiencia = ?, telefono = ?, afp = ?, sistemaSalud = ?, direccion = ?, comuna = ?, edad = ?, titulo = ?, fechaIngreso = ? WHERE id = ? AND tipo = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            
            switch (usuario.getTipo()) {
            case "Administrativo":
                Administrativo admin = (Administrativo) usuario;
                statement.setString(1, usuario.getNombre());
    	        statement.setString(2, usuario.getFechaNacimiento());
    	        statement.setString(3, usuario.getRut());
                statement.setString(4, admin.getArea());
                statement.setString(5, admin.getExperiencia());
                statement.setString(6, null);
                statement.setString(7, null);
                statement.setInt(8, 0);
                statement.setString(9, null);
                statement.setString(10, null);
                statement.setInt(11, 0);
                statement.setString(12, null);
                statement.setString(13, null);
                statement.setInt(14, usuario.getId());
                statement.setString(15, usuario.getTipo());
                break;
            case "Cliente":
                Cliente cliente = (Cliente) usuario;
                statement.setString(1, usuario.getNombre());
    	        statement.setString(2, usuario.getFechaNacimiento());
    	        statement.setString(3, usuario.getRut());
    	        statement.setString(4, null);
                statement.setString(5, null);
                statement.setString(6, cliente.getTelefono());
                statement.setString(7, cliente.getAfp());
                statement.setInt(8, cliente.getSistemaSalud());
                statement.setString(9, cliente.getDireccion());
                statement.setString(10, cliente.getComuna());
                statement.setInt(11, cliente.getEdad());
                statement.setString(12, null);
                statement.setString(13, null);
                statement.setInt(14, usuario.getId());
                statement.setString(15, usuario.getTipo());
                break;
            case "Profesional":
                Profesional profesional = (Profesional) usuario;
                statement.setString(1, usuario.getNombre());
    	        statement.setString(2, usuario.getFechaNacimiento());
    	        statement.setString(3, usuario.getRut());
                statement.setString(4, null);
                statement.setString(5, null);
                statement.setString(6, null);
                statement.setString(7, null);
                statement.setInt(8, 0);
                statement.setString(9, null);
                statement.setString(10, null);
                statement.setInt(11, 0);
                statement.setString(12, profesional.getTitulo());
                statement.setString(13, profesional.getFechaIngreso());
                statement.setInt(14, usuario.getId());
                statement.setString(15, usuario.getTipo());
                break;
            default:
                break;
        }
            
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
