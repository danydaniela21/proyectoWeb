package model;

public class Profesional extends Usuario {
	private String titulo;
    private String fechaIngreso;
    
	public Profesional(int id, String nombre, String fechaNacimiento, String rutUsuario, String tipo, String titulo, String fechaIngreso) {
		super(id, nombre, fechaNacimiento, rutUsuario, tipo);
		this.titulo = titulo;
		this.fechaIngreso = fechaIngreso;
	}

	public Profesional() {
		
	}

	@Override
	public String toString() {
		return "Profesional [titulo=" + titulo + ", fechaIngreso=" + fechaIngreso + ", toString()=" + super.toString()
				+ "]";
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getFechaIngreso() {
		return fechaIngreso;
	}

	public void setFechaIngreso(String fechaIngreso) {
		this.fechaIngreso = fechaIngreso;
	}
    
}
