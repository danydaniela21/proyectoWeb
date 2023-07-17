package model;

public class Usuario {
	private int id;
	private String nombre;
	private String fechaNacimiento;
	private String rut;
	private String tipo;
	
	public Usuario(int id,String nombre, String fechaNacimiento, String rut, String tipo) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.fechaNacimiento = fechaNacimiento;
		this.rut = rut;
		this.tipo = tipo;
	}
	
	public Usuario() {
		
	}

	@Override
	public String toString() {
		return "Usuario [id=\" + id + \", nombre=" + nombre + ", fechaNacimiento=" + fechaNacimiento + ", rut=" + rut
				+ ", tipo=" + tipo + "]";
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}
	
	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
}
