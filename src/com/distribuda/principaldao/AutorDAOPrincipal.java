package com.distribuda.principaldao;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.AutorDAO;
import com.distribuida.entities.Autor;



public class AutorDAOPrincipal {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");

		AutorDAO autorDAO = context.getBean("autorDAOImpl",AutorDAO.class);
		
		//insert
		Autor autor =new Autor(0,"Erick","Iza","Ecuador","Puembo","090102983","asdlal@dsld.com");
		autorDAO.add(autor);
		//update
		//	Autor Autor2 =new Autor(0,"jose","Taipe","Ecuador","Tumbaco","0999824674","jtape12@correo.com");
				//AutorDAO.add(Autor1);

		//Delete
		//AutorDAO.del(39);
		//findOne
		/*try {
			Autor Autor3 =autorDAO.findOne(39);
			System.out.println(Autor3.toString());
			
		}catch (Exception e) {
			e.printStackTrace();
		}*/
				
		
		//findAll
		List<Autor>Autor1 =autorDAO.findAll();
		
		for (Autor item:Autor1) {
			System.out.println(item.toString());
		}
		
		context.close();
		
		
	}

}
