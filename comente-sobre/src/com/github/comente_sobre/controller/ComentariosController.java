package com.github.comente_sobre.controller;


import java.sql.Timestamp;
import java.util.List;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;

import com.github.comente_sobre.dao.ComentarioDao;
import com.github.comente_sobre.model.Comentario;

@Resource
public class ComentariosController {

	private final Result result;
	private ComentarioDao comentarioDao;
	   
    public ComentariosController(Result result, ComentarioDao comentarioDao) {
        this.result = result;
        this.comentarioDao = comentarioDao;
    }
	
    @Path("comentario/enviar")
	public void novoComentario(Comentario comentario){
    	Comentario comentarioResult = new Comentario();
    	comentarioResult.setTitulo(comentario.getTitulo());
    	comentario.setTitulo(comentario.getTitulo().replaceAll("[\\-]+", " "));
    	comentario.setData(new Timestamp(System.currentTimeMillis()));
    	comentarioDao.saveOrUpdate(comentario);
    	this.result.use(Results.logic()).redirectTo(ComentariosController.class).list(comentarioResult);
	}
	
    @Path("{comentario.titulo}/lista")
	public List<Comentario> list(Comentario comentario){
    	comentario.setTitulo(comentario.getTitulo().replaceAll("[\\-]+", " "));
    	System.out.println(comentario.getTitulo());
		return comentarioDao.listRestrictions(comentario);
	}
	
}
