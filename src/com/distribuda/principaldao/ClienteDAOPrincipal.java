package com.distribuda.principaldao;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.ClienteDAO;
import com.distribuida.entities.Cliente;

public class ClienteDAOPrincipal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");

		ClienteDAO clienteDAO = context.getBean("clienteDAOImpl",ClienteDAO.class);
		
		//insert
		Cliente cliente =new Cliente(0,"1270123456","Juan","Taipe","Quito","0987654321","jtape@correo.com");
		//clienteDAO.add(cliente);
		//update
				Cliente cliente2 =new Cliente(39,"1270123456","Juan7","Taipe7","Quito7","0987654777","jtape7@correo.com");
				//clienteDAO.add(cliente2);

		//Delete
		//clienteDAO.del(39);
		//findOne
		try {
			Cliente cliente3 =clienteDAO.findOne(39);
			System.out.println(cliente3.toString());
			
		}catch (Exception e) {
			e.printStackTrace();
		}
				
		
		//findAll
		List<Cliente>clientes =clienteDAO.findAll();
		
		for (Cliente item:clientes) {
			System.out.println(item.toString());
		}
		
		context.close();
		
		
	}

}

