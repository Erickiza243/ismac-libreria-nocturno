package com.distribuida.entities;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

public class FacturaDetalle {
	

@Entity
@Table(name="facturadetalle")
public class FacturDetalle {
	
	///SQL : 1 A 1     <> JAVA = @OneToOne
	/// SQL: 1 A N   <>  JAVA = @OneToMany   or @ManyToOne
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idfacturadetalle")
	private int idFacturadetalle;
	@Column(name="cantidad")
	private  int cantidad;
	@Column(name=" subtotal")
	private double subtotal;
	@JoinColumn(name= "id_libro")
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	private Libro libro;
	
	@JoinColumn(name= "id_Factura")
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	private Factura factura;
	

	
	public FacturDetalle() {
		
	}


	public FacturDetalle(int idFacturadetalle, int cantidad, double subtotal, Libro libro, Factura factura) {
		super();
		this.idFacturadetalle = idFacturadetalle;
		this.cantidad = cantidad;
		this.subtotal = subtotal;
		this.libro = libro;
		this.factura = factura;
	}


	public int getIdFacturadetalle() {
		return idFacturadetalle;
	}

	public void setIdFacturadetalle(int idFacturadetalle) {
		this.idFacturadetalle = idFacturadetalle;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

	public Factura getFactura() {
		return factura;
	}

	public void setFactura(Factura factura) {
		this.factura = factura;
	}

	public Libro getLibro() {
		return libro;
	}

	public void setLibro(Libro libro) {
		this.libro = libro;
	}

	@Override
	public String toString() {
		return "FacturaDetalle [idFacturadetalle=" + idFacturadetalle + ", cantidad=" + cantidad + ", subtotal="
				+ subtotal + ", factura=" + factura + ", libro=" + libro + "]";
	}
	
	
	
	
	


}
}
