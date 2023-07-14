package model;

public class Administrativo {
	
	private String area;
	private String experienciaPrevia;
	
	public Administrativo(String area, String experienciaPrevia) {
		this.area = area;
		this.experienciaPrevia = experienciaPrevia;
	}
	
	public Administrativo() {
		
	}

	@Override
	public String toString() {
		return "Administrativo [area=" + area + ", experienciaPrevia=" + experienciaPrevia + "]";
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
