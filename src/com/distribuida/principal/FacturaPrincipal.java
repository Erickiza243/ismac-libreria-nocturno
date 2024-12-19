package com.distribuida.principal;


import java.util.Date;

import com.distribuida.entities.Cliente;
import com.distribuida.entities.Factura;

public class FacturaPrincipal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Cliente cliente2 = new Cliente(2, "172004313", "Roberto","Quinchuluisa","Tumbaco","094561234","quinchi@hotmail.com");
		
		Factura factura2 = new Factura();
		
		factura2.setIdFactura(0);
		factura2.setNumFactura("FAC-0001");
		factura2.setFecha(new Date());
		factura2.setTotalNeto(112.3);
		factura2.setIva(0.12);
		factura2.setTotal(156.96);
		factura2.setCliente(cliente2);
		
		
		System.out.println(factura2.toString());
	}

	}


