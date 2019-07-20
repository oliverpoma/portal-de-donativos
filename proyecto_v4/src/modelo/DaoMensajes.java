package modelo;

import java.util.List;

import entidades.Mensaje;

public interface DaoMensajes {
	void nuevoMensaje(Mensaje mensaje);
	List<Mensaje> getMensajes();
	void eliminarMensaje(int idMensaje);
}
