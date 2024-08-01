package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.Provedores;

public interface ProvedoresDAO {
	
	public List<Provedores> findAll();
	
	public Provedores findOne(int id);
	
	public void add(Provedores provedores);
	
	public void up(Provedores provedores);
	
	public void del(int id);
	
	// CRUD avanzados 

}
