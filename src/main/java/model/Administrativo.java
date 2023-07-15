package model;

public class Administrativo extends Usuario {
	
	private String area;
	private String experienciaPrevia;
	
	public Administrativo(String nombre, String fechaNacimiento, String rutUsuario, String tipo, String area, String experienciaPrevia) {
		super(nombre, fechaNacimiento, rutUsuario, tipo);
		this.area = area;
		this.experienciaPrevia = experienciaPrevia;
	}
	
	public Administrativo() {
		
	}

	@Override
	public String toString() {
		return "Administrativo [area=" + area + ", experienciaPrevia=" + experienciaPrevia + ", toString()="
				+ super.toString() + "]";
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getExperienciaPrevia() {
		return experienciaPrevia;
	}

	public void setExperienciaPrevia(String experienciaPrevia) {
		this.experienciaPrevia = experienciaPrevia;
	}
	
	
}
