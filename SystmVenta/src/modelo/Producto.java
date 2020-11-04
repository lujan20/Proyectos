package modelo;

public class Producto {
	int id;
	String nom;
	Double precio;
	int stock;
	String estado;
public Producto() {
	// TODO Auto-generated constructor stub
}
public Producto(int id, String nom, Double precio, int stock, String estado) {
	super();
	this.id = id;
	this.nom = nom;
	this.precio = precio;
	this.stock = stock;
	this.estado = estado;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public Double getPrecio() {
	return precio;
}
public void setPrecio(Double precio) {
	this.precio = precio;
}
public int getStock() {
	return stock;
}
public void setStock(int stock) {
	this.stock = stock;
}
public String getEstado() {
	return estado;
}
public void setEstado(String estado) {
	this.estado = estado;
}


}
