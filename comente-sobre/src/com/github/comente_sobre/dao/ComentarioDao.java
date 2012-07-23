package com.github.comente_sobre.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;

import com.github.comente_sobre.model.Comentario;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.RequestScoped;

@Component
@RequestScoped
public class ComentarioDao extends AbstractDao{

	Session session;
	Criteria criteria;
	
	public ComentarioDao(Session session) {
		super(session);
		this.session= session;
	}
	
	public List<Comentario> list(){
		getCriteria();
		return criteria.list();
	}
	
	
	public List<Comentario> listRestrictions(Comentario comentario){
		getCriteria();
		if(comentario != null){
			if(comentario.getTitulo() != null){
				criteria.add(Restrictions.eq("titulo", comentario.getTitulo()));
			}
		}
		return criteria.list();
	}
	
	public Criteria getCriteria(){
		if(criteria == null){
			criteria = session.createCriteria(Comentario.class);
		}
		return criteria;
	}
}
