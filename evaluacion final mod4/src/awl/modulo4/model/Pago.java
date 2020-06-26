package awl.modulo4.model;

public class Pago {

	private int idpago;
	private String mesanio;
	private int montoregular;
	private int montoadicional;
	private int clienteid;
	
	
	
	
<<<<<<< HEAD
	public Pago(String mesanio, int montoregular, int montoadicional, int clienteid) {
=======
	public Pago(int idpago, String mesanio, int montoregular, int montoadicional, int clienteid) {
		this.idpago = idpago;
>>>>>>> c057e94947c259392f06c9737ea5a2d5d0a2c243
		this.mesanio = mesanio;
		this.montoregular = montoregular;
		this.montoadicional = montoadicional;
		this.clienteid = clienteid;
	}




<<<<<<< HEAD
=======
	public Pago() {
		// TODO Auto-generated constructor stub
	}




>>>>>>> c057e94947c259392f06c9737ea5a2d5d0a2c243
	public int getIdpago() {
		return idpago;
	}




	public void setIdpago(int idpago) {
		this.idpago = idpago;
	}




	public String getMesanio() {
		return mesanio;
	}




	public void setMesanio(String mesanio) {
		this.mesanio = mesanio;
	}




	public int getMontoregular() {
		return montoregular;
	}




	public void setMontoregular(int montoregular) {
		this.montoregular = montoregular;
	}




	public int getMontoadicional() {
		return montoadicional;
	}




	public void setMontoadicional(int montoadicional) {
		this.montoadicional = montoadicional;
	}




	public int getClienteid() {
		return clienteid;
	}




	public void setClienteid(int clienteid) {
		this.clienteid = clienteid;
	}




	@Override
	public String toString() {
		return "Pago [idpago=" + idpago + ", mesanio=" + mesanio + ", montoregular=" + montoregular
				+ ", montoadicional=" + montoadicional + ", clienteid=" + clienteid + "]";
	}
	
	
	
}
