import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;

/**Home page servlet.
 */
public class Welcome extends StatusServlet {

	private String statusIndex;

	public void init() {
		statusIndex = getServletConfig().getInitParameter("statusIndex");
	}

	public void doGet(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		doGetOrPost(req, resp);
	}

	public void doPost(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		doGetOrPost(req, resp);
	}

	private void doGetOrPost(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		forwardReq(statusIndex, req, resp);
	}
}
