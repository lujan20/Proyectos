package modelo;

public class Cliente {
	int id;
	String dni;
	String nom;
	String direc;
	String estado;
	
	public Cliente() {
		// TODO Auto-generated constructor stub
	}
	public Cliente(int id,String dni,String nom,String direc,String estado) {
		this.id=id;
		this.dni=dni;
		this.nom=nom;
		this.direc=direc;
		this.estado=estado;
	
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getDirec() {
		return direc;
	}
	public void setDirec(String direc) {
		this.direc = direc;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
}
