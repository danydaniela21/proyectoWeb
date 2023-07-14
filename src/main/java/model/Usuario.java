package model;

public class Usuario {
	private String nombre;
	private String fechaNacimiento;
	private String rutUsuario;
	private String tipo;
	
	public Usuario(String nombre, String fechaNacimiento, String rutUsuario, String tipo) {
		super();
		this.nombre = nombre;
		this.fechaNacimiento = fechaNacimiento;
		this.rutUsuario = rutUsuario;
		this.tipo = tipo;
	}
	
	public Usuario() {
		
	}

	@Override
	public String toString() {
		return "Usuario [nombre=" + nombre + ", fechaNacimiento=" + fechaNacimiento + ", rutUsuario=" + rutUsuario
				+ ", tipo=" + tipo + "]";
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
	
	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
}
