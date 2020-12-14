package model.managers;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.entites.Fabricant;
import model.entites.Produit;
import service.DBConnexion;

public class ManagerProduit {
	/// recherches
	private final static String queryGetAll = "select* from produits;";
	private final static String queryById = "select * from produits where id like ?;";

	public static final String querygetByCategorieID = "select * from produits where categorie_id = ?;";
	public static final String querygetByFabricantID = "select * from produits where fabricant_id = ?;";
	
	public static ArrayList<Produit> getByCategorieID(int CategorieID){
		ArrayList<Produit> produits = new ArrayList<Produit>();
		PreparedStatement ps = DBConnexion.getPs(querygetByCategorieID);
		try {
			ps.setInt(1, CategorieID);
			ResultSet result = ps.executeQuery();
			
			while(result.next()) {
				produits.add(new Produit(result.getInt("id"), result.getString("pr_name"),
						result.getDouble("pr_price"), result.getInt("categorie_id"), result.getDouble("pr_rabais"),
						 result.getInt("fabricant_id"), result.getString("urlImage"), result.getString("description")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DBConnexion.close();
		return produits;
	}
	
	public static ArrayList<Produit> getByFabricantID (int fabricantID){
		ArrayList<Produit> produits = new ArrayList<Produit>();
		PreparedStatement ps = DBConnexion.getPs(querygetByFabricantID);
		try {
			ps.setInt(1, fabricantID);
			ResultSet result = ps.executeQuery();
			
			while(result.next()) {
				produits.add(new Produit(result.getInt("id"), result.getString("pr_name"),
						result.getDouble("pr_price"), result.getInt("categorie_id"), result.getDouble("pr_rabais"),
						 result.getInt("fabricant_id"), result.getString("urlImage"), result.getString("description")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DBConnexion.close();
		return produits;
	}
	
	public static ArrayList<Produit> getAll() {
		PreparedStatement ps = DBConnexion.getPs(queryGetAll);
		ArrayList<Produit> produits = new ArrayList<>();
		try {
		ResultSet result = ps.executeQuery();
		while (result.next()) {
			Produit prod = new Produit();
			prod.setId(result.getInt("id"));
			prod.setName(result.getString("pr_name"));
			prod.setPrix(result.getDouble("pr_price"));
			prod.setCategorie_id(result.getInt("categorie_id"));
			prod.setRabais(result.getDouble("pr_rabais"));
			prod.setFabricant_id(result.getInt("fabricant_id"));
			produits.add(prod);
		}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		DBConnexion.close();
		return produits;
	}

	public static Produit getById(int id) {
		Produit produit = null;
		PreparedStatement ps = DBConnexion.getPs(queryById);

		try {
			ps.setInt(1, id);
			ResultSet result = ps.executeQuery();
			if (result.next()) {
				produit = new Produit();
				produit.setId(result.getInt("id"));
				produit.setName(result.getString("pr_name"));
				produit.setPrix(result.getDouble("pr_price"));
				produit.setCategorie_id(result.getInt("categorie_id"));
				produit.setRabais(result.getDouble("pr_rabais"));
				produit.setFabricant_id(result.getInt("fabricant_id"));

			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		DBConnexion.close();
		return produit;
	}
}

