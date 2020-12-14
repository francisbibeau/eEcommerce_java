package model.entites;

public class Produit {
	private int id;
	private String name;
	private double prix;
	private int categorie_id;
	private double rabais;
	private int fabricant_id;
	private String urlImage;
	private String description;

	// Constructeurs
	public Produit() {
	}

	public Produit(int id, String name, double prix, int categorie_id, double rabais, int fabricant_id, String urlImage,
			String description) {
		super();
		this.id = id;
		this.name = name;
		this.prix = prix;
		this.categorie_id = categorie_id;
		this.rabais = rabais;
		this.fabricant_id = fabricant_id;
		this.urlImage = urlImage;
		this.description = description;
	}

	// Getters Setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}

	public int getCategorie_id() {
		return categorie_id;
	}

	public void setCategorie_id(int categorie_id) {
		this.categorie_id = categorie_id;
	}

	public double getRabais() {
		return rabais;
	}

	public void setRabais(double rabais) {
		this.rabais = rabais;
	}

	public int getFabricant_id() {
		return fabricant_id;
	}

	public void setFabricant_id(int fabricant_id) {
		this.fabricant_id = fabricant_id;
	}

	public String getUrlImage() {
		return urlImage;
	}

	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}