package modelo;

import java.util.List;

import entidades.Donativo;

public interface DaoDonativos {
	void confirmarDonativo(Donativo confirmado);
	List<Donativo> getDonativos();
	List<Donativo> getDonativosIdDni(String idDni);
}
