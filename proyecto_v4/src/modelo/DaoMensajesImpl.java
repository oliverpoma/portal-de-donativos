package modelo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entidades.Mensaje;
import entidades.Solicitud;

@Repository("DaoMensajes")
public class DaoMensajesImpl implements DaoMensajes {
	@PersistenceContext(unitName = "proyectoPU")
	EntityManager em;
	
	@Transactional
	@Override
	public void nuevoMensaje(Mensaje mensaje) {
		em.persist(mensaje);

	}

	@Override
	public List<Mensaje> getMensajes() {
		return em.createQuery("select m from Mensaje m").getResultList();
	}
	
	@Transactional
	@Override
	public void eliminarMensaje(int idMensaje) {
		em.remove(em.find(Mensaje.class, idMensaje));
	}
}
