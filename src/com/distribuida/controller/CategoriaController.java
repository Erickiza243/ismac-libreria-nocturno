package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.distribuida.dao.CategoriaDAO;

import com.distribuida.entities.Categoria;

@Controller
@RequestMapping("/Categoria")
public class CategoriaController {

	@Autowired
	private CategoriaDAO categoriaDAO;
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Categoria> categoria = categoriaDAO.findAll();
		
		model.addAttribute("categoria", categoria);
		
		
		return "categoria-listar";
		
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idCategoria") @ Nullable Integer idcategoria
			,@RequestParam("opcion") @Nullable Integer opcion
			, Model model
			) {
		
		if(idcategoria != null) {
			Categoria categoria = categoriaDAO.findOne(idcategoria);
			model.addAttribute("categoria", categoria);
		}
		
		if(opcion == 1) return "categoria-add";
		return "categoria-del";
	}
	
	@PostMapping("/add")
	public String add(@RequestParam("idcategoria") @Nullable Integer idCategoria
			, @RequestParam("categoria") @Nullable String categoria
            , @RequestParam("descripcion") @Nullable String descripcion
            , Model model
			) {
		
		
		if(idCategoria == null) {
			Categoria categoria1 = new Categoria(0 ,categoria,descripcion);
		categoriaDAO.add(categoria1);
		}else {
			Categoria categoria2 = new Categoria(idCategoria,categoria,descripcion);
            categoriaDAO.up(categoria2);
		}
		return "redirect://categoria/findAll";
		
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idCategoria") @Nullable Integer idCategoria) {
		categoriaDAO.del(idCategoria);
		return "redirect://categoria/findAll";
	}

}
