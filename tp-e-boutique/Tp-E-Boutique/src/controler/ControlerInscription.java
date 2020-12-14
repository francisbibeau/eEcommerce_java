package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.actions.ActionUser;
import model.entites.User;

@WebServlet("/controlerInscription")
public class ControlerInscription extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ControlerInscription() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/inscription.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User newUtilisateur = new User();
//Creer un nouvel utilisateur en prenant les donne passe en parametre
		newUtilisateur.setUser_title(request.getParameter("title"));
		newUtilisateur.setUser_lastname(request.getParameter("Nom"));
		newUtilisateur.setUser_firstname(request.getParameter("Prenom"));
		newUtilisateur.setUser_login(request.getParameter("login"));
		newUtilisateur.setUser_password(request.getParameter("mdp"));
		
//Si le mot de passe est egual au premier on entre dans le premier if sinon else (redirection page inscription)
		String verifieMdp = (request.getParameter("verifieMdp"));
		if (verifieMdp != null && !verifieMdp.equals("") && newUtilisateur.getUser_password().equals(verifieMdp)) {

			ActionUser.inscriptionUser(newUtilisateur, request);
			session.setAttribute("user", request.getAttribute("user"));	
			request.getRequestDispatcher("acceuil.jsp").forward(request, response);
			
		} else {
			
			request.setAttribute("wrongMDP", "Les mots de passe ne concorde pas");
			request.getRequestDispatcher("WEB-INF/inscription.jsp").forward(request, response);
		}

	}

}
