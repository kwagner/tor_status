import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DriverManager;

public class PsqlStatusDAO implements StatusDAO{
	
	private Connection conn;
	
	// Implements the Singleton pattern.
	private static PsqlStatusDAO theDAO = null;

	public static PsqlStatusDAO getDAO(String connString) {
		if (theDAO == null) 
			theDAO = new PsqlStatusDAO(connString);
		return theDAO;
	}

	public PsqlStatusDAO() {
		Class.forName("org.postgresql.Driver");
		String connStr = "jdbc:postgresql://localhost:5432/torstatus";
		String username = "mvitale";
		String password = "ernie";
		conn = DriverManager.getConnection(connStr, username, password);
	}

	/** Returns a List of RouterResult beans. 
	 * Note: this should be modified to NOT throw an SQLException,
	 * as this violates the abstraction provided by the DAO.
	 */
	public List<RouterResult> getResults(String fingerprint, String name) 
		throws SQLException {
		List<RouterResult> searchResults = new ArrayList<RouterResult>();
		
		Statement resultStatement = conn.createStatement();

		ResultSet rs = invStatement.executeQuery(
				"select * from statusentry where fingerprint = '" + fingerprint
				+ "*' and name = '" + name + "*' order by nickname;");

		while(rs.next()) {
			resultStatement.add(new RouterResult(rs.getString("nickname"),
												 rs.getString("fingerprint")
												 rs.getString("descriptor"));
		}
		return searchResults;
	}
}
