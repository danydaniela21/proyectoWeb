package model;

public class Cliente extends Usuario {
	private String telefono;
	private String afp;
	private int sistemaDeSalud;
	private String direccion;
	private String comuna;
	private int edad;
	
	public Cliente(String nombre, String fechaNacimiento, String rutUsuario, String tipo, String telefono, String afp, int sistemaDeSalud,
			String direccion, String comuna, int edad) {
		super(nombre, fechaNacimiento, rutUsuario, tipo);
		this.telefono = telefono;
		this.afp = afp;
		this.sistemaDeSalud = sistemaDeSalud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
	}
	
	public Cliente() {
		
	}

	@Override
	public String toString() {
		return "Cliente [telefono=" + telefono + ", afp=" + afp + ", sistemaDeSalud=" + sistemaDeSalud + ", direccion="
				+ direccion + ", comuna=" + comuna + ", edad=" + edad + ", toString()=" + super.toString() + "]";
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getAfp() {
		return afp;
	}

	public void setAfp(String afp) {
		this.afp = afp;
	}

	public int getSistemaDeSalud() {
		return sistemaDeSalud;
	}

	public void setSistemaDeSalud(int sistemaDeSalud) {
		this.sistemaDeSalud = sistemaDeSalud;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}
	
}
