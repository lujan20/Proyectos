package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.Conexion;

public class ClienteDAO {

	Conexion cn = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	int r;

	public Cliente buscar(String dni) {
		Cliente c = new Cliente();
		String sql = " select * from cliente where" + dni;//para ver que sucede luego lo cambias
		try {
			con = cn.conectarBD();
			ps = con.prepareStatement(sql);		
			rs = ps.executeQuery();//Se cayo aqui porque la sintaxis del sql esta mal porque este metodo execute.... ejecuta la cosnulta sql
			//eso es todo amigo espero hayas entendido , buenas noches! gracais amigo si le entendi
			while (rs.next()) {
				c.setId(rs.getInt(1));
				c.setDni(rs.getString(2));
				c.setNom(rs.getString(3));
				c.setDirec(rs.getString(4));
				c.setEstado(rs.getString(5));	
			}
		} catch (Exception e) {
			

		}
		return c;
		
	}
	
    public List<Cliente>  listar() {
      	 String sgl="select*from cliente";
      	 List<Cliente>lista=new ArrayList<>();
      	 try {
      		 con=cn.conectarBD();
      		 ps=con.prepareStatement(sgl);
      		 rs=ps.executeQuery();
      		 while(rs.next()) {
      			Cliente em= new Cliente();
      			em.setId(rs.getInt(1));
      			em.setDni(rs.getString(2));
      			em.setNom(rs.getString(3));
      			em.setDirec(rs.getString(4));
      			em.setEstado(rs.getString(5));
      			lista.add(em);
      				 }
      	 }catch(Exception e){
      		 
      	 }
   		return lista;
       }
       public int agregar(Cliente cl) {
      	 String sgl="insert into cliente(Dni, Nombres ,Direcion, Estado) value(?,?,?,?)";
      	 try {
      		 con=cn.conectarBD();
      		 ps=con.prepareStatement(sgl);
      		 ps.setString(1, cl.getDni());
	   		 ps.setString(2, cl.getNom());
	   		 ps.setString(3, cl.getDirec());
	   		 ps.setString(4, cl.getEstado());
      		 ps.executeUpdate();
      		
   		} catch (Exception e) {
   			
   		}
   		return r;
       }
       
       public Cliente listarId(int id) {
      	 Cliente cli=new Cliente();
      	 String sgl="select*from Cliente where IdCliente="+id;
      	 try {
      		 con=cn.conectarBD();
      		 ps=con.prepareStatement(sgl);
      		 rs=ps.executeQuery();
      		 while(rs.next()){
      			 cli.setDni(rs.getString(2));
      			cli.setNom(rs.getString(3));
      			cli.setDirec(rs.getString(4));
      			cli.setEstado(rs.getString(5));
      			
      			
      		 }
      		 
   		} catch (Exception e) {
   			
   		}
   		return cli;
       }
      
       public int actualizar(Cliente em) {
      	 String sgl="update cliente set Dni=?, Nombres=?, Direccion=?, Estado=? where IdCliente=?";
      	 try {
      		 con=cn.conectarBD();
      		 ps=con.prepareStatement(sgl);
      		 ps.setString(1, em.getDni());
	   		 ps.setString(2, em.getNom());
	   		 ps.setString(3, em.getDirec());
	   		 ps.setString(4, em.getEstado());
	   		 ps.setInt(6, em.getId());
	   		 ps.executeUpdate();
      		 
   		} catch (Exception e) {
   			
   		}
   		return r;
      	 
       }
       public void delete(int id) {
      	 String sgl="delete*from cliente where IdCliente="+id;
      	 try {
      		 con=cn.conectarBD();
      		 ps=con.prepareStatement(sgl);
      		 ps.executeUpdate();
   		} catch (Exception e) {
   			
   		}
   }
}