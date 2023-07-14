package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Capacitacion {
	private int id;
	private String nombre;
	private String fecha;
	private String hora1;
	private String lugar;
	private String duracion;
	private String detalle;

	public Capacitacion(int id, String nombre, String fecha, String hora1, String lugar, String duracion, String detalle) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.fecha = fecha;
		this.hora1 = hora1;
		this.lugar = lugar;
		this.duracion = duracion;
		this.detalle = detalle;
	}
	
	
	
	public Capacitacion() {
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

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getHora1() {
		return hora1;
	}

	public void setHora1(String hora1) {
		this.hora1 = hora1;
	}

	public String getLugar() {
		return lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public String getDuracion() {
		return duracion;
	}

	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}
	
	public String getDetalle() {
		return detalle;
	}

	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}
	
	public static String formatearFecha(String fecha) {
        try {
            SimpleDateFormat formatoEntrada = new SimpleDateFormat("yyyy-MM-dd");
            Date fechaParseada = formatoEntrada.parse(fecha);

            SimpleDateFormat formatoSalida = new SimpleDateFormat("EEEE dd 'de' MMMM 'del' yyyy");
            return formatoSalida.format(fechaParseada);
        } catch (ParseException e) {
            e.printStackTrace();
            return "";
        }
    }
	
	public String mostrarDetalle(String lugar, String hora, String fecha, String duracion) {
		return "La capacitación será en " + lugar + " a las " + hora + " del día " + fecha + " y durará " + duracion + " minutos.";
	}
}
