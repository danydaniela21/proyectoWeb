package model;

public class Usuario {
	private String nombre;
	private String fechaNacimiento;
	private String rutUsuario;
	
	public Usuario(String nombre, String fechaNacimiento, String rutUsuario) {
		super();
		this.nombre = nombre;
		this.fechaNacimiento = fechaNacimiento;
		this.rutUsuario = rutUsuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getRutUsuario() {
		return rutUsuario;
	}

	public void setRutUsuario(String rutUsuario) {
		this.rutUsuario = rutUsuario;
	}
	
	
}
