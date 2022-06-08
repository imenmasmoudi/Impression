package tn.iit.authentification.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.iit.authentification.model.Utilisateur;

/**
 * Servlet implementation class InscriptionController
 */
@WebServlet("/InscriptionController")
public class InscriptionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InscriptionController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//Utilisateur u = new Utilisateur(request.getParameter("nom"), request.getParameter("prenom"),
				//request.getParameter("login"), request.getParameter("password"));
		ServletContext application = getServletContext(); 
		HttpSession session = request.getSession();
		Utilisateur u = new Utilisateur( (Utilisateur) session.getAttribute("currentUser"));
		List<Utilisateur> liste = (List<Utilisateur>) application.getAttribute("listeUsers");
		if (liste == null) {
			liste = new ArrayList<Utilisateur>();
		}
		liste.add(u);
		session.setAttribute("currentUser", u);
		application.setAttribute("listeUsers", liste);
		response.sendRedirect("bienvenue.jsp");
	}

}
