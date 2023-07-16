package interfaces;

import java.util.List;

import model.Capacitacion;

public interface CapacitacionDAO {
	List<Capacitacion> obtenerListaCapacitaciones();
    void registrarCapacitacion(Capacitacion capacitacion);
}
