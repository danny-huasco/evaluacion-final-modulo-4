package awl.modulo4.controlador;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import awl.modulo4.dao.MejoraDao;
import awl.modulo4.model.Mejora;

/**
 * Servlet implementation class AgregarActMejora
 */
@WebServlet("/AgregarActMejora")
public class AgregarActMejora extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarActMejora() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("IngresarActMejora.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		int idmejora = Integer.parseInt(request.getParameter("idMejora"));
		String fecha = request.getParameter("fecha");
		String motivo = request.getParameter("motivo");
		String actividades = request.getParameter("actividades");		
		String estado = request.getParameter("radiob");
		int clienteid = Integer.parseInt(request.getParameter("idCliente"));
		
		Mejora mej = new Mejora(idmejora,fecha, motivo,actividades,estado,clienteid);
		MejoraDao mejDao = new MejoraDao();
		
		boolean agregar = false;
		agregar = mejDao.agregar(mej);
		
		String mensaje = "";
		
		if(agregar) {
			mensaje = "La mejora fue agregada con exito";
		}else {
			mensaje = "su solicitud no pudo ser procesada";
		}
		
		request.setAttribute("ccmensaje", mensaje);
		request.getRequestDispatcher("IngresarActMejora.jsp").forward(request, response);
		
		
	}

}

