package com.github.comente_sobre.dao;


import org.hibernate.classic.Session;


public class AbstractDao {

	private Session session;
	
	public AbstractDao(Session session) {
		this.session = session;
	}
	
	public void saveOrUpdate(Object objeto){
		session.saveOrUpdate(objeto);
	}
	
	public void delete(Object objeto){
		session.delete(objeto);
	}
	
}
