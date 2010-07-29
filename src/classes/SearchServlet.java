import java.util.List;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class SearchServlet extends StatusServlet {
	
	private String searchPage;
	private String onFail;

	public void init() {
		searchPage = getServletConfig().getInitParameter("searchJSP");
		onFail = getServletConfig().getInitParameter("onFail");
		System.out.println(searchPage);
		super.init();
		System.out.println("Successful super.init()");
	}

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			    throws ServletException, IOException {
		doGetOrPost(req, resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
		doGetOrPost(req, resp);
	}

	private void doGetOrPost(HttpServletRequest req, HttpServletResponse resp)
			     throws ServletException, IOException {
		if (initError) {
			forwardReq(onFail, req, resp);
		}

		String fingerQuery = req.getParameter("fingerprint");
		String nameQuery = req.getParameter("name");

		List<RouterResult> searchResults = null;
		try {
			searchResults = theDAO.getResults(fingerQuery, nameQuery);
			System.out.println(searchResults);
		}
		catch (StatusDAOException e) {
			forwardReq(onFail, req, resp);
			System.out.println("DAO failure!");
		}

		req.setAttribute("searchResults", searchResults);
		forwardReq(searchPage, req, resp);
	}
}
		

