package implementacion;

import java.util.ArrayList;
import java.util.List;

import interfaces.ICapacitacionDAO;
import model.Capacitacion;

public class CapacitacionDAOImpl implements ICapacitacionDAO {

	@Override
	public List<Capacitacion> obtenerListaCapacitaciones() {
		
        List<Capacitacion> capacitaciones = new ArrayList<>();

        Capacitacion capacitacion1 = new Capacitacion();
        capacitacion1.setId(1);
        capacitacion1.setNombre("Capacitacion 1");
        capacitacion1.setDetalle("Descripción de la capacitación 1");
        capacitaciones.add(capacitacion1);

        Capacitacion capacitacion2 = new Capacitacion();
        capacitacion2.setId(2);
        capacitacion2.setNombre("Capacitacion 2");
        capacitacion2.setDetalle("Descripción de la capacitación 2");
        capacitaciones.add(capacitacion2);

        Capacitacion capacitacion3 = new Capacitacion();
        capacitacion3.setId(3);
        capacitacion3.setNombre("Capacitacion 3");
        capacitacion3.setDetalle("Descripción de la capacitación 3");
        capacitaciones.add(capacitacion3);

        return capacitaciones;
	}

	@Override
	public void registrarCapacitacion(Capacitacion capacitacion) {
		System.out.println("ID: " + capacitacion.getId());
        System.out.println("Nombre: " + capacitacion.getNombre());
        System.out.println("Detalle: " + capacitacion.getDetalle());
		
	}

}
