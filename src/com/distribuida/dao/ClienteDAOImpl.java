package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.Cliente;

@Repository
public class ClienteDAOImpl implements ClienteDAO {
	//SQL:SELECT * FROM clientes;
	//HQL:SELECT * FROM Clientes cl;
	
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional
	

	@Override
	public List<Cliente> findAll() {
		// TODO Auto-generated method stub
		Session session =sessionFactory.getCurrentSession();
		return session.createQuery("FROM Clinte",Cliente.class).getResultList();
	}

	@Override
	public Cliente findOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(Cliente Cliente) {
		// TODO Auto-generated method stub

	}

	@Override
	public void up(Cliente Cliente) {
		// TODO Auto-generated method stub

	}

	@Override
	public void del(int id) {
		// TODO Auto-generated method stub

	}

}
