package com.distribuida.principal;

import com.distribuida.entities.Categoria;

public class CategoriaPrincipal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Categoria categoria = new Categoria(1,"Progrmacion","En esta categoria están los libros de programación 1, 2, 3, 4, web, distribuida, en red, etc.");

		System.out.println(categoria.toString());
	}

}
