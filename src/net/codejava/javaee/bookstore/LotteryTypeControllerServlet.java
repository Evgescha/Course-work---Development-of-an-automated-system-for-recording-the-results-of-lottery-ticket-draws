package net.codejava.javaee.bookstore;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LotteryTypeControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LotteryTypeDAO lotteryTypeDAO;
	
	public void init() {
		String jdbcURL = getServletContext().getInitParameter("jdbcURL");
		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

		
		lotteryTypeDAO = new LotteryTypeDAO(jdbcURL, jdbcUsername, jdbcPassword);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/lotteryType/new":
				showNewForm(request, response);
				break;
			case "/lotteryType/insert":
				insertEntity(request, response);
				break;
			case "/lotteryType/delete":
				deleteEntity(request, response);
				break;
			case "/lotteryType/edit":
				showEditForm(request, response);
				break;
			case "/lotteryType/update":
				updateEntity(request, response);
				break;
			default:
				listEntity(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listEntity(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<LotteryType> listAll = lotteryTypeDAO.listAll();
		request.setAttribute("list", listAll);
		RequestDispatcher dispatcher = request.getRequestDispatcher("LotteryTypeList.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("LotteryTypeForm.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		LotteryType existing = lotteryTypeDAO.get(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("LotteryTypeForm.jsp");
		request.setAttribute("book", existing);
		dispatcher.forward(request, response);

	}

	private void insertEntity(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String name = request.getParameter("name");

		LotteryType entity = new LotteryType(name);
		lotteryTypeDAO.insert(entity);
		response.sendRedirect("list");
	}

	private void updateEntity(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name= request.getParameter("name");

		LotteryType entity = new LotteryType(id, name);
		lotteryTypeDAO.update(entity);
		response.sendRedirect("list");
	}

	private void deleteEntity(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		LotteryType book = new LotteryType(id);
		lotteryTypeDAO.delete(book);
		response.sendRedirect("list");

	}

}
