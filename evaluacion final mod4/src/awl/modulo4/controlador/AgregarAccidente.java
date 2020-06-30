package awl.modulo4.controlador;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import awl.modulo4.dao.AccidenteDao;
import awl.modulo4.model.Accidente;

/**
 * Servlet implementation class AgregarAccidente
 */
@WebServlet("/AgregarAccidente")
public class AgregarAccidente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarAccidente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("ReportarAccidente.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		int idaccidente = Integer.parseInt(request.getParameter("idaccidente"));
		String fecha = request.getParameter("fecha");
		String hora = request.getParameter("hora");
		String lugar = request.getParameter("lugar");
		String suceso = request.getParameter("suceso");
		int clienteid = Integer.parseInt(request.getParameter("idcliente"));
		
		Accidente acc = new Accidente(idaccidente,fecha,hora,suceso,lugar,clienteid);
		AccidenteDao accidentedao = new AccidenteDao();
		
		boolean agregar = false;
		agregar = accidentedao.agregar(acc);
		
		String mensaje = "";
		
		if (agregar)
			mensaje = "El accidente ha sido registrado exitosamente.";
		else
			mensaje = "Ocurrio un error al procesar la solicitud";
		
		request.setAttribute("ccmensaje", mensaje);
		request.getRequestDispatcher("ReportarAccidente.jsp").forward(request, response);		
	}

}