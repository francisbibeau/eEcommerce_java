package model.actions;

import javax.servlet.http.HttpServletRequest;

import model.entites.User;
import model.managers.ManagerUser;

public class ActionUser {
	public static void verifierSiUserExist (User user,HttpServletRequest req) {
		User temp = ManagerUser.checkUser(user);
		
		if (temp != null) {
			req.setAttribute("user", temp);
		}
	}

	public static void inscriptionUser(User user, HttpServletRequest request) {
		boolean estAjouter = false;

		if (ManagerUser.checkUser(user) == null) {
			estAjouter = ManagerUser.addUser(user);
			request.setAttribute("user", ManagerUser.checkUser(user));

		} else {
			request.setAttribute("erreur", "Error the user already exist");
		}
		if (!estAjouter) {
			request.setAttribute("erreur", "Error: Unknown");
		}

	}
}
