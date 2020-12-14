package model.entites;

public class Categorie {
	private int id;
	private String name;
	private String description;
	
	public Categorie(int id, String ct_name, String ct_description) {
		super();
		this.id = id;
		this.name = ct_name;
		this.description = ct_description;
	}
	
	public Categorie() {
		
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCt_name() {
		return name;
	}
	public void setCt_name(String ct_name) {
		this.name = ct_name;
	}

	public String getCt_description() {
		return description;
	}
	public void setCt_description(String ct_description) {
		this.description = ct_description;
	}

}
