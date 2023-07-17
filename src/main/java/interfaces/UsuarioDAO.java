package interfaces;

import java.util.List;

import model.Usuario;

public interface UsuarioDAO {
	List<Usuario> obtenerListaUsuario();
    void registrarUsuario(Usuario usuario);
}
