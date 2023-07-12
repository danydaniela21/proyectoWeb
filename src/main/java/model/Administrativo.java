package model;

public class Administrativo {
	
	// obligatorio, mínimo 5 caracteres, máximo 20
	private String area;
		
	// máximo 100 caracteres
	private String experienciaPrevia;
	
	public Administrativo(String area, String experienciaPrevia) {
		this.area = area;
		this.experienciaPrevia = experienciaPrevia;
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
