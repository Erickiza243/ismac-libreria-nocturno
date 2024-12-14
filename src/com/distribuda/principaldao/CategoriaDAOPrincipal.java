package com.distribuda.principaldao;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.CategoriaDAO;

import com.distribuida.entities.Categoria;



public class CategoriaDAOPrincipal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
  
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		
		CategoriaDAO categoriaDAO = context.getBean("categoriaDAOImpl", CategoriaDAO.class);
		
		Categoria categoria = new Categoria(0,"Progrmacion3","En esta categoria están los libros de programación 1, 2, 3, 4, web, distribuida, en red, etc.");
		categoriaDAO.add(categoria);
		
		Categoria categoria2 = new Categoria(0,"Progrmacion2","En esta categoria están los libros de programación 1, 2, 3, 4, web, distribuida, en red, etc.");
		categoriaDAO.add(categoria2);
		//Delete
		//categoriaDAO.del(1);
		//findOne
		
		/*try {
		Categoria categoria2 =categoriaDAO.findOne(39);
		System.out.println(categoria2.toString());
		
	}catch (Exception e) {
		e.printStackTrace();
	}*/
			
	
	//findAll
	List<Categoria>Categoria = categoriaDAO.findAll();
	
	for (Categoria item:Categoria) {
		System.out.println(item.toString());
	}
	
	context.close();
	
	}

}
