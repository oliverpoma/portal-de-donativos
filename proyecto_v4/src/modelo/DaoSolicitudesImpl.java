package modelo;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entidades.Solicitud;

@Repository("DaoSolicitudes")
public class DaoSolicitudesImpl implements DaoSolicitudes {
	@PersistenceContext(unitName = "proyectoPU")
	EntityManager em;

	@Override
	public List<Solicitud> getSolicitudes() {
		return em.createQuery("select s from Solicitud s").getResultList();
	}

	@Override
	public List<Solicitud> agregarDonativo(Solicitud solicitado) {
		List<Solicitud> l = new ArrayList<>();
		l.add(solicitado);
		return l;
	}
	
	@Transactional
	@Override
	public void nuevaSolicitud(Solicitud solicitud) {
		em.persist(solicitud);
	}
	
	@Override
	public Solicitud getSolicitud(int idSolicitud) {
		return em.find(Solicitud.class, idSolicitud);
	}
	
	@Transactional
	@Override
	public void eliminarSolicitud(int idSolicitud) {
		em.remove(em.find(Solicitud.class, idSolicitud));
	}

}
