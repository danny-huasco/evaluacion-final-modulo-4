package awl.modulo4.model;

public class Capacitacion {

	private int idcapacitacion;
	private String fecha;
	private String hora;
	private int numasistentes;
	private int visitaid;

	public Capacitacion(int idcapacitacion, String fecha, String hora, int numasistentes, int visitaid) {
		this.idcapacitacion = idcapacitacion;
		this.fecha = fecha;
		this.hora = hora;
		this.numasistentes = numasistentes;
		this.visitaid = visitaid;
	}


	public Capacitacion() {
		// TODO Auto-generated constructor stub
	}


	public int getIdcapacitacion() {
		return idcapacitacion;
	}


	public void setIdcapacitacion(int idcapacitacion) {
		this.idcapacitacion = idcapacitacion;
	}



	public String getFecha() {
		return fecha;
	}




	public void setFecha(String fecha) {
		this.fecha = fecha;
	}




	public String getHora() {
		return hora;
	}




	public void setHora(String hora) {
		this.hora = hora;
	}




	public int getNumasistentes() {
		return numasistentes;
	}




	public void setNumasistentes(int numasistentes) {
		this.numasistentes = numasistentes;
	}


	public int getVisitaid() {
		return visitaid;
	}


	public void setVisitaid(int visitaid) {
		this.visitaid = visitaid;
	}




	@Override
	public String toString() {
		return "Capacitacion [idcapacitacion=" + idcapacitacion + ", fecha=" + fecha + ", hora=" + hora
				+ ", numasistentes=" + numasistentes + ", visitaid=" + visitaid + "]";
	}
	
	
	
}
