package awl.modulo4.controlador;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import awl.modulo4.dao.AsesoriaDao;
import awl.modulo4.model.Asesoria;

/**
 * Servlet implementation class CrearAsesoria
 */
@WebServlet("/CrearAsesoria")
public class CrearAsesoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearAsesoria() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("CrearAsesoria.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		int idasesoria = Integer.parseInt(request.getParameter("idasesoria"));
		String detalle = request.getParameter("detalle");
		String gestion = request.getParameter("gestion");
		String propuestas = request.getParameter("propuestas");
		String fecha = request.getParameter("fecha");
		String especial = request.getParameter("especial");
		int visitaid = Integer.parseInt(request.getParameter("visitaid"));
		
		Asesoria ase = new Asesoria(idasesoria, detalle, gestion, propuestas, fecha, especial, visitaid);
		AsesoriaDao asesoriadao = new AsesoriaDao();
		
		boolean agregar = false;
		agregar = asesoriadao.agregar(ase);
		
		String mensaje = "";
		
		if (agregar)
			mensaje = "Asesoria agregada exitosamente.";
		else
			mensaje = "Ocurrió un error al procesar la solicitud";
		
		request.setAttribute("ccmensaje", mensaje);
		request.getRequestDispatcher("CrearAsesoria.jsp").forward(request, response);
	}

}
