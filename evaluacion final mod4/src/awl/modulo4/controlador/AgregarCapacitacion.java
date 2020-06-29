package awl.modulo4.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import awl.modulo4.dao.CapacitacionDao;
import awl.modulo4.model.Capacitacion;

/**
 * Servlet implementation class AgregarCapacitacion
 */
@WebServlet("/AgregarCapacitacion")
public class AgregarCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarCapacitacion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("CrearCapacitacion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		int idcapacitacion = Integer.parseInt(request.getParameter("idcapacitacion"));
		String fecha =(request.getParameter("fecha"));
		String hora = request.getParameter("hora");
		int numasistentes = Integer.parseInt(request.getParameter("numasistentes"));
		int visitaid = Integer.parseInt(request.getParameter("visitaid"));
		
		Capacitacion cap = new Capacitacion(idcapacitacion,fecha,hora,numasistentes,visitaid);
		CapacitacionDao capacitaciondao = new CapacitacionDao();
		
		boolean agregar = false;
		agregar = capacitaciondao.agregar(cap);
		
		String mensaje = "";
		
		if (agregar)
			mensaje = "La capacitacion se ha agregado exitosamente.";
		else
			mensaje = "Ocurrió un error al procesar la solicitud";
		
		request.setAttribute("ccmensaje", mensaje);
		request.getRequestDispatcher("CrearCapacitacion.jsp").forward(request, response);		
		
	}

}
