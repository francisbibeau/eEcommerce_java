package model.entites;

import java.util.Date;

public class Commande {
	private int id;
	private Date date;
	private String adresseFacturation;
	private String adresseLivraison;
	private String methodePaiement;
	private String status;
	
	//Constructeurs
	public Commande() {
	}
	
	public Commande(int id, Date date, String adresseFacturation, String adresseLivraison,
			String methodePaiement, String status) {
		super();
		this.id = id;
		this.date = date;
		this.adresseFacturation = adresseFacturation;
		this.adresseLivraison = adresseLivraison;
		this.methodePaiement = methodePaiement;
		this.status = status;
	}
	//Getters Setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getAdresseFacturation() {
		return adresseFacturation;
	}
	public void setAdresseFacturation(String adresseFacturation) {
		this.adresseFacturation = adresseFacturation;
	}
	public String getAdresseLivraison() {
		return adresseLivraison;
	}
	public void setAdresseLivraison(String adresseLivraison) {
		this.adresseLivraison = adresseLivraison;
	}
	public String getMethodePaiement() {
		return methodePaiement;
	}
	public void setMethodePaiement(String methodePaiement) {
		this.methodePaiement = methodePaiement;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
}
