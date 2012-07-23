package com.github.comente_sobre.util;

import javax.annotation.PostConstruct;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.ComponentFactory;
import br.com.caelum.vraptor.ioc.RequestScoped;


@Component
@RequestScoped
public class HibernateUtil implements ComponentFactory<Session> {

    private final SessionFactory factory;
    private Session session;
    private Transaction transaction;

    public HibernateUtil(SessionFactory factory) {
        this.factory = factory;
    }

    @PostConstruct
    public void create() {
        this.session = factory.openSession();
    }

    public Session getInstance() {
        return session;
    }

    public void closeSession() {
		if (session != null && session.isOpen()) {
			session.close();
		}
	}
    
    public void beginTransaction() {
		transaction = session.beginTransaction();
	}

	public void commitTransaction() {
		if (transaction != null && !transaction.wasCommitted()
				&& !transaction.wasRolledBack()) {
			transaction.commit();
		}
	}

	public void rollbackTransaction() {
		if (transaction != null && !transaction.wasCommitted()
				&& !transaction.wasRolledBack()) {
			transaction.rollback();
		}
	}
   
   
}