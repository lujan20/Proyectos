package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.Conexion;

public class ProductoDAO {
	
	Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
	   //operaciones CRUD
    public List<Producto>  listar() {
   	 String sgl="select*from producto";
   	 List<Producto>lista=new ArrayList<>();
   	 try {
   		 con=cn.conectarBD();
   		 ps=con.prepareStatement(sgl);
   		 rs=ps.executeQuery();
   		 while(rs.next()) {
   			Producto em= new Producto();
   			em.setId(rs.getInt(1));
   			em.setNom(rs.getString(2));
   			em.setPrecio(rs.getDouble(3));
   			em.setStock(rs.getInt(4));
   			em.setEstado(rs.getString(5));
   			lista.add(em);
   				 }
   	 }catch(Exception e){
   		 
   	 }
		return lista;
    }
    public int agregar(Producto p) {
   	 String sgl="insert into producto(Nombres, Precio ,Stock, Estado) value(?,?,?,?,?)";
   	 try {
   		 con=cn.conectarBD();
   		 ps=con.prepareStatement(sgl);
   		 ps.setString(1, p.getNom());
   		 ps.setDouble(2, p.getPrecio());
   		 ps.setInt(3, p.getStock());
   		 ps.setString(4, p.getEstado());
   		 ps.executeUpdate();
   		
		} catch (Exception e) {
			
		}
		return r;
    }
    
    public Producto listarId(int id) {
   	 Producto pro=new Producto();
   	 String sgl="select * from Producto where IdProducto="+id;
   	 try {
   		 con=cn.conectarBD();
   		 ps=con.prepareStatement(sgl);
   		 rs=ps.executeQuery();
   		 while(rs.next()){
   			 pro.setId(rs.getInt(1));
   			 pro.setNom(rs.getString(2));
   			 pro.setPrecio(rs.getDouble(3));
   			 pro.setStock(rs.getInt(4));
   			 pro.setEstado(rs.getString(5));
   			
   		 }
   		 
		} catch (Exception e) {
			
		}
		return pro;
    }
   
    public int actualizar(Producto em) {
   	 String sgl="update producto set Nombres=?, Precio=? ,Stock=?, Estado=? where IdProductoo=?";
   	 try {
   		 con=cn.conectarBD();
   		 ps=con.prepareStatement(sgl);
   		 ps.setString(1, em.getNom());
   		 ps.setDouble(2, em.getPrecio());
   		 ps.setInt(3, em.getStock());
   		 ps.setString(4, em.getEstado());
   		 ps.setInt(5, em.getId());
   		 ps.executeUpdate();
   		 
		} catch (Exception e) {
			
		}
		return r;
   	 
    }
    public void delete(int id) {
   	 String sgl="delete*from producto where IdProducto="+id;
   	 try {
   		 con=cn.conectarBD();
   		 ps=con.prepareStatement(sgl);
   		 ps.executeUpdate();
		} catch (Exception e) {
			
		}
}
}
