package modelo;

import java.util.List;

import entidades.Miembro;

public interface DaoMiembros {
	Miembro loginMiembro(String email, String password);
	void registrarMiembro(Miembro miembro);
	void actualizarMiembro(String idDni, String nombre, int telefono, String direccion, String email);
	boolean actualizarPassword(String idDni, String antiguo, String nuevo);
	List<Miembro> getVoluntarios();
}
