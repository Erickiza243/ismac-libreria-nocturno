package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.Cliente;

public interface ClienteDAO {
 
public List<Cliente> findAll();
  
public Cliente findOne(int id);

public void add(Cliente Cliente);
public void up(Cliente Cliente);
public void del(int id);



}
