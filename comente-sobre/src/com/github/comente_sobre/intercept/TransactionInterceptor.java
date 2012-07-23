package com.github.comente_sobre.intercept;


import com.github.comente_sobre.util.HibernateUtil;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.ioc.RequestScoped;
import br.com.caelum.vraptor.resource.ResourceMethod;

@RequestScoped
@Intercepts
public class TransactionInterceptor implements Interceptor {
	
	private HibernateUtil controller;
	
	public TransactionInterceptor(HibernateUtil controller) {
		this.controller = controller;
	}

   public void intercept(InterceptorStack stack, ResourceMethod method, Object instance)
       throws InterceptionException {
       try {
           controller.beginTransaction();
           stack.next(method, instance);
           controller.commitTransaction();
       } finally {
        	   controller.rollbackTransaction();
        	   controller.closeSession();
       }
   }

   public boolean accepts(ResourceMethod method) {
       return true;
   }

}