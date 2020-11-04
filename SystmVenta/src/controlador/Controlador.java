package controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.crypto.provider.RSACipher;

import config.GenerarSerie;
import modelo.Cliente;
import modelo.ClienteDAO;
import modelo.Empleado;
import modelo.EmpleadoDB;
import modelo.Producto;
import modelo.ProductoDAO;
import modelo.Venta;
import modelo.VentaDAO;

//@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	EmpleadoDB edao = new EmpleadoDB();
	Empleado em = new Empleado();
	ClienteDAO cdao=new ClienteDAO();
	Cliente c=new Cliente();
	Producto p= new Producto();
	ProductoDAO pdao=new ProductoDAO();
	
	int ide;
	int idc;
	int idp;
	
	Venta v=new Venta();
	List<Venta>lista=new ArrayList<Venta>();
	int item;
	int cod;
	String descripcion;
	double precio;
    int cant;
    double subtotal;
    double totalPagar;
    
    String numeroserie;
    VentaDAO vdao=new VentaDAO();
    

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
		String accion = request.getParameter("accion");
		String menu = request.getParameter("menu");
		if (menu.equals("Principal")) {
			request.getRequestDispatcher("Principal.jsp").forward(request, response);
		}
		if (menu.equals("Empleado")) {
			switch (accion) {
			case "Listar":
								
				List<Empleado> lista =edao.listar();
				request.setAttribute("empleados", lista);
				request.getRequestDispatcher("Empleado.jsp").forward(request, response);
				break;
			case "Agregar":
				String dni=request.getParameter("txtDni");
				String nom =request.getParameter("txtNombres");
				String tel=request.getParameter("txtTel");
				String est=request.getParameter("txtEstado");
				String user=request.getParameter("txtUser");
				em.setDni(dni);
				em.setNom(nom);
				em.setTel(tel);
				em.setEstado(est);
				em.setUser(user);
				edao.agregar(em);
				request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);

				break;
			case "Editar":
				ide = Integer.parseInt(request.getParameter("id"));
				Empleado e = edao.listarId(ide);
				request.setAttribute("empleado", e);
				request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
			
				break;
			
			
			case "Actualizar":
				String dnia = request.getParameter("txtDni");
				String noma = request.getParameter("txtNombres");
				String tela = request.getParameter("txtTel");
				String esta = request.getParameter("txtEstado");
				String usera = request.getParameter("txtUser");
				em.setDni(dnia);
				em.setNom(noma);
				em.setTel(tela);
				em.setEstado(esta);
				em.setUser(usera);
				em.setId(ide);
				edao.actualizar(em);

				request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
				break;
			case "Delete":
				ide = Integer.parseInt(request.getParameter("id"));
				edao.delete(ide);
				request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
				break;

			default:
				throw new AssertionError();
			}
			
		}
		
		//------------------------- CLIENTE 
		
		 if (menu.equals("Cliente")) {
			switch (accion) {
			case "Listar":
				List<Cliente> lista=cdao.listar();
				request.setAttribute("clientes", lista);
				break;
			case "Agregar":
				String dni=request.getParameter("txtDni");
				String nom =request.getParameter("txtNombres");
				String direc=request.getParameter("txtDirec");
				String estado=request.getParameter("txtEstado");
				
				c.setDni(dni);
				c.setNom(nom);
				c.setDirec(direc);
				c.setEstado(estado);
				cdao.agregar(c);
				
				request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
				break;
			case "Editar":
				ide = Integer.parseInt(request.getParameter("id"));
				Empleado cli = edao.listarId(idc);
				request.setAttribute("cliente", cli);
				request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
			
				break;
			
			case "Actualizar":
				String dni1 = request.getParameter("txtDni");
				String nom1 = request.getParameter("txtNombres");
				String direc1 = request.getParameter("txtDirec");
				String est1 = request.getParameter("txtEstado");
		
				c.setDni(dni1);
				c.setNom(nom1);
				c.setDirec(direc1);
				c.setEstado(est1);
				c.setId(idc);
				cdao.actualizar(c);

				request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
				break;
				
			case "Delete":
				idc = Integer.parseInt(request.getParameter("id"));
				cdao.delete(idc);
				request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
				break;

			default:
				throw new AssertionError();	
				
			}
			
			request.getRequestDispatcher("Cliente.jsp").forward(request, response);
		}
		
		//------producto--------
		
		if (menu.equals("Producto")) {
			switch (accion) {
			case "Listar":
				List<Producto> lista=pdao.listar();
				request.setAttribute("productos", lista);
				break;
			case "Agregar":
				String dni=request.getParameter("txtDni");
				Double precio = Double.parseDouble(request.getParameter("precio"));
				int stock=Integer.parseInt(request.getParameter("stock"));
				String estado=request.getParameter("txtEstado");
			    p.setNom(dni);
			    p.setPrecio(precio);
			    p.setStock(stock);
			    p.setEstado(estado);
			    pdao.agregar(p);
				request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
				break;
			case "Editar":
				idp = Integer.parseInt(request.getParameter("id"));
				Producto pr = pdao.listarId(idp);
				request.setAttribute("producto", pr);
				request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
			
				break;
			
			case "Actualizar":
				String dni1 = request.getParameter("txtDni");
				Double precio1 = Double.parseDouble(request.getParameter("txtNombres"));
				int stock1 = Integer.parseInt(request.getParameter("txtTel"));
				String estado1 = request.getParameter("txtEstado");
		        
				p.setNom(dni1);
				p.setPrecio(precio1);
				p.setStock(stock1);
				p.setEstado(estado1);
				p.setId(idp);
				pdao.actualizar(p);

				request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
				break;
				
			case "Delete":
				idp = Integer.parseInt(request.getParameter("id"));
				pdao.delete(idp);
				request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
				break;

			default:
				throw new AssertionError();	
				
			}
			
			request.getRequestDispatcher("Producto.jsp").forward(request, response);
		}
		
		//--------------nuevo venta  ----------
		
		if (menu.equals("NuevaVenta")) {
			v=new Venta();
			switch (accion) {
			case "BuscarCliente":
				String dni= request.getParameter("codigocliente");
				c.setDni(dni);
				c =cdao.buscar(dni); 
				request.setAttribute("c", c);
				break;
			case "BuscarProducto":
				int id= Integer.parseInt(request.getParameter("codigoproducto"));
				p=pdao.listarId(id);
				request.setAttribute("c", c);
				request.setAttribute("producto", p);
				request.setAttribute("lista", lista);
				request.setAttribute("totalpagar", totalPagar);
              break;
              
			case "Agregar":
				request.setAttribute("c", c);
				totalPagar =0.0;
				item=item+1;
				cod=p.getId();
				descripcion=request.getParameter("nomproducto");
				precio=Double.parseDouble(request.getParameter("precio"));
				cant=Integer.parseInt(request.getParameter("cant"));
				subtotal=precio*cant;
				v=new Venta();
				v.setItem(item);
				v.setIdproducto(cod);
				v.setDescripcionP(descripcion);
				v.setPrecio(precio);
				v.setCantidad(cant);
				v.setSubtotal(subtotal);
				lista.add(v);
				for (int i = 0; i < lista.size(); i++) {
					totalPagar=totalPagar +lista.get(i).getSubtotal();
				}
				request.setAttribute("totalpagar", totalPagar);
				request.setAttribute("lista", lista);
				break;
			case "GenerarVenta":
				//guardar venta
				v.setIdcliente(c.getId());
				v.setIdempleado(2);
				v.setNumserie(numeroserie);
				v.setFecha("2020-10-27");
				v.setMonto(totalPagar);
				v.setEstado("1");
				vdao.GuardarVenta(v);
				//guardar detlle ventas
				int idv=Integer.parseInt(vdao.IdVentas());
				for (int i = 0; i<lista.size(); i++) {
					v=new Venta();
					v.setId(idv);
					v.setIdproducto(lista.get(i).getIdproducto());
					v.setCantidad(lista.get(i).getCantidad());
					v.setPrecio(lista.get(i).getPrecio());
					vdao.gurdarDetalleVentas(v);
					
					
				}
				break;
			default:
				v=new Venta();
				lista=new ArrayList<>();
				item =0;
				totalPagar=0.0;
				
				numeroserie=vdao.GenerarSerie();
				if (numeroserie==null) {
					numeroserie="00000001";
					request.setAttribute("nserie", numeroserie);
					
				}else {
					int incrementar=Integer.parseInt(numeroserie);
					GenerarSerie gs=new GenerarSerie();
					numeroserie=gs.NumeroSerie(incrementar);
					request.setAttribute("nserie", numeroserie);
					
				}
				request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
			}
		
			request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
		}

	}

}
