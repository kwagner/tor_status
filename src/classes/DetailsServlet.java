import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;

/** Router details servlet.
 */
public class DetailsServlet extends HttpServlet {

	private String jsp;

	public void init() {
		jsp = getServletConfig().getInitParameter("detailsJSP");
	}

	public void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doGetOrPost(req, resp);
		return;
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGetOrPost(req, resp);
		return;
	}

	public void doGetOrPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		forwardReq(jsp, req, resp);
		return;
	}

	public void forwardReq(String resource, HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher(resource).forward(req, resp);
		return;
	}
}

