
public class Uea {
	private Integer clave;
	 private String nombre;
	 private Integer trimestre;
	 private String requisito;
	 private Integer telefono;
	 private String direccion;
	 private String observacion;
	 
	public Integer getClave() {
		return clave;
	}
	public void setClave(Integer clave) {
		this.clave = clave;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Integer getTrimestre() {
		return trimestre;
	}
	public void setTrimestre(Integer trimestre) {
		this.trimestre = trimestre;
	}
	public String getRequisito() {
		return requisito;
	}
	public void setRequisito(String requisito) {
		this.requisito = requisito;
	}
	public Integer getTelefono() {
		return telefono;
	}
	public void setTelefono(Integer telefono) {
		this.telefono = telefono;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getObservacion() {
		return observacion;
	}
	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}
	public Uea(Integer clave, String nombre, Integer trimestre, String requisito, Integer telefono, String direccion,
			String observacion) {
		super();
		this.clave = clave;
		this.nombre = nombre;
		this.trimestre = trimestre;
		this.requisito = requisito;
		this.telefono = telefono;
		this.direccion = direccion;
		this.observacion = observacion;
	}

	

	



}
