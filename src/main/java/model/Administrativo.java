package model;

public class Administrativo extends Usuario {
	
	private String area;
	private String experiencia;
	
	public Administrativo(int id, String nombre, String fechaNacimiento, String rutUsuario, String tipo, String area, String experiencia) {
		super(id, nombre, fechaNacimiento, rutUsuario, tipo);
		this.area = area;
		this.experiencia = experiencia;
	}
	
	public Administrativo() {
		
	}

	@Override
	public String toString() {
		return "Administrativo [area=" + area + ", experiencia=" + experiencia + ", toString()="
				+ super.toString() + "]";
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getExperiencia() {
		return experiencia;
	}

	public void setExperiencia(String experiencia) {
		this.experiencia = experiencia;
	}
	
	
}
