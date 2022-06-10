package tn.iit.authentification.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.iit.authentification.dao.ImpressionDAO;
import tn.iit.authentification.model.Impression;

/**
 * Servlet implementation class ImpressionController
 */
@WebServlet("/ImpressionController")
public class ImpressionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ImpressionDAO impressionDAO = new ImpressionDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImpressionController() {
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	
        String action = request.getParameter("action");
        List<Impression> list = impressionDAO.getAll();
        
    	if (action.equalsIgnoreCase("listedemande")) {

            //List<Grade> list = gs.getAll();
            RequestDispatcher dispatch = request.getRequestDispatcher("./dashboardAgentTirage.jsp");
            request.setAttribute("listeDemandeTirage", list);
            dispatch.forward(request, response);
        }
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
