package modelo;

import java.util.List;

import entidades.Donativo;
import entidades.Solicitud;

public interface DaoSolicitudes {
	List<Solicitud> getSolicitudes();
	List<Solicitud> agregarDonativo(Solicitud solicitado);
	void nuevaSolicitud(Solicitud solicitud);
	void eliminarSolicitud(int idRol);
	Solicitud getSolicitud(int idSolicitud);
}
