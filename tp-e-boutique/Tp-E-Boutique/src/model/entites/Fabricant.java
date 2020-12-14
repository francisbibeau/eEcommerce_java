package model.entites;

public class Fabricant {
	private int id;
	private String nom;
	private String description;
	
	//Constructeurs
	public Fabricant() {
	}
	
	public Fabricant(int id, String nom, String description) {
		super();
		this.id = id;
		this.nom = nom;
		this.description = description;
	}
	
	//Getters Setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
