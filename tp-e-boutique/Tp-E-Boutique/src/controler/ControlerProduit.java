package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.actions.ActionProduit;

/**
 * Servlet implementation class ControlerProduit
 */
@WebServlet("/controlerProduit")
public class ControlerProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlerProduit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String categorie = request.getParameter("categorie");
		
		if(categorie != null) {
			ActionProduit.afficherProduitParCategorie(Integer.valueOf(categorie), request);
		}
		else {
			ActionProduit.afficherProduitParCategorie(Integer.valueOf(1), request);
		}
		request.getRequestDispatcher("WEB-INF/produits.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
