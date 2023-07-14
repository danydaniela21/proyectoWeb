package interfaces;

import java.util.List;

import model.Capacitacion;

public interface ICapacitacionDAO {

	List<Capacitacion> obtenerListaCapacitaciones();
    void registrarCapacitacion(Capacitacion capacitacion);
}
