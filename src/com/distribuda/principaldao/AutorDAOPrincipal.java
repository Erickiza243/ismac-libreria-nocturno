package com.distribuda.principaldao;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.AutorDAO;
import com.distribuida.entities.Autor;



public class AutorDAOPrincipal {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");

		AutorDAO AutorDAO = context.getBean("AutorDAOImpl",AutorDAO.class);
		
		//insert
		Autor Autor =new Autor(0,"1270123456","Juan","Taipe","Quito","0987654321","jtape@correo.com");
		//AutorDAO.add(Autor);
		//update
			Autor Autor2 =new Autor(39,"1270123456","Juan7","Taipe7","Quito7","0987654777","jtape7@correo.com");
				//AutorDAO.add(cliente2);

		//Delete
		//AutorDAO.del(39);
		//findOne
		try {
			Autor Autor3 =AutorDAO.findOne(39);
			System.out.println(Autor3.toString());
			
		}catch (Exception e) {
			e.printStackTrace();
		}
				
		
		//findAll
		List<Autor>Autor1 =AutorDAO.findAll();
		
		for (Autor item:Autor1) {
			System.out.println(item.toString());
		}
		
		context.close();
		
		
	}

}
