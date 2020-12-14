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

/**
 * Servlet implementation class ControlerLogin
 */
@WebServlet("/controlerLogin")
public class ControlerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControlerLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);

		// request.getRequestDispatcher("accueil.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		String login = request.getParameter("login");
		User user = new User();
		if (login != null) {
			user.setUser_login(username);
			user.setUser_password(pwd);
			ActionUser.verifierSiUserExist(user, request);
		}
		user = (User) request.getAttribute("user");
		if (user != null) {
			session.setAttribute("user", user);
			request.getRequestDispatcher("acceuil.jsp").forward(request, response);

		} else {
			request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
		}
	}

}
