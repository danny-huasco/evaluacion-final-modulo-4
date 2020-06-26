package awl.modulo4.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		int idMejora = Integer.parseInt(request.getParameter("#"));//asignar id automaticamente
		String fecha = request.getParameter("#fecha");
		String motivo = request.getParameter("#motivo");
		String actividades = request.getParameter("#actividades");
		//ver cual de los round esta checked
		String estado = request.getParameter("#");
		int id_cliente = Integer.parseInt(request.getParameter("#idCliente"));
		
		Mejora mej = new Mejora(fecha, motivo, actividades, estado, id_cliente);
		MejoraDao mejDao = new MejoraDao();
		
		boolean agregar = false;
		agregar = MejoraDao.agregar(mej);
		
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
