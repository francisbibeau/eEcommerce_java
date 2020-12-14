package model.actions;

import javax.servlet.http.HttpServletRequest;

import model.entites.User;
import model.managers.ManagerProduit;
import model.managers.ManagerUser;

public class ActionProduit {
	public static void afficherProduitParCategorie (int categorieID, HttpServletRequest req) {
		req.setAttribute("listeProduit", ManagerProduit.getByCategorieID(categorieID));
	}
	static void afficherTousProduits(HttpServletRequest req) {

		req.setAttribute("listeProduit", ManagerProduit.getAll());
	}

	static void afficherProduitParId(int id, HttpServletRequest req) {

		req.setAttribute("produit", ManagerProduit.getById(id));
	}

	public static void afficherProduitParFabricant (int fabricantID, HttpServletRequest req) {
		req.setAttribute("listeProduit", ManagerProduit.getByCategorieID(fabricantID));
	}
}
