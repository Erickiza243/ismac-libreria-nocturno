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

import com.distribuida.dao.AutorDAO;

import com.distribuida.entities.Autor;


@Controller
@RequestMapping("/Autor")
public class AutorController {

	@Autowired
	private AutorDAO autorDAO;
	
	@GetMapping("/findAll")
	public String findAll(Model model) {
		
		List<Autor> autor = autorDAO.findAll();
		
		model.addAttribute("autor", autor);
		
		
		return "autor-listar";
		
	}
	
	@GetMapping("/findOne")
	public String findOne(@RequestParam("idAutor") @ Nullable Integer idautor
			,@RequestParam("opcion") @Nullable Integer opcion
			, Model model
			) {
		
		if(idautor != null) {
			Autor autor = autorDAO.findOne(idautor);
			model.addAttribute("autor", autor);
		}
		
		if(opcion == 1) return "autor-add";
		return "autor-del";
	}
	
	@PostMapping("/add")
	public String add(@RequestParam("idAutor") @Nullable Integer idAutor
			, @RequestParam("pais") @Nullable String pais
			, @RequestParam("nombre") @Nullable String nombre
			, @RequestParam("apellido") @Nullable String apellido
			, @RequestParam("direccion") @Nullable String direccion
            , @RequestParam("telefono") @Nullable String telefono
            , @RequestParam("correo") @Nullable String correo
            , Model model
			) {
		
		
		if(idAutor == null) {
			Autor autor = new Autor(0 , nombre, apellido,pais,direccion, telefono, correo);
			autorDAO.add(autor);
		}else {
			Autor autor2 = new Autor(idAutor , nombre, apellido,pais,direccion, telefono, correo);
            autorDAO.up(autor2);
		}
		return "redirect://autor/findAll";
		
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idAutor") @Nullable Integer idAutor) {
		autorDAO.del(idAutor);
		return "redirect://autor/findAll";
	}
	
}
