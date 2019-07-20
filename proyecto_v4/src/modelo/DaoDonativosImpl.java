package modelo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entidades.Donativo;

@Repository("DaoDonativos")
public class DaoDonativosImpl implements DaoDonativos {
	@PersistenceContext(unitName = "proyectoPU")
	EntityManager em;
	
	@Transactional
	@Override
	public void confirmarDonativo(Donativo confirmado) {
		em.persist(confirmado);

	}

	@Override
	public List<Donativo> getDonativos() {
		return em.createQuery("select d from Donativo d").getResultList();
	}

	@Override
	public List<Donativo> getDonativosIdDni(String idDni) {
		Query qr=em.createQuery("select d from Donativo d where d.idDni=?1");
		qr.setParameter(1, idDni);
		return qr.getResultList();
	}

}
