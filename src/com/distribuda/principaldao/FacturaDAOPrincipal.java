package com.distribuda.principaldao;

import java.util.Date;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.ClienteDAO;
import com.distribuida.dao.FacturaDAO;
import com.distribuida.entities.Cliente;
import com.distribuida.entities.Factura;

public class FacturaDAOPrincipal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
 ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("AplicationContext.xml");
 FacturaDAO facturaDAO = context.getBean("facturaDAOImpl",FacturaDAO.class);
 ClienteDAO clientedao = context.getBean("clienteDAOImpl",ClienteDAO.class);
 
 //add
// Cliente cliente = clientedao.findOne(1);
 //Factura factura = new Factura (0,"FAC-00099",new Date(),123.23,12.3,1141.20,cliente);
 //facturadao.add(factura);
 
 //findAll
 List<Factura> facturas = facturaDAO.findAll();
  
 for (Factura item :facturas) {
	 System.out.println(item.toString());
 }
 
  context.close();
 
	}

	
}
