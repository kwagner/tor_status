import java.util.ArrayList;
import java.util.List;
import java.lang.ClassNotFoundException;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DriverManager;

public class PsqlStatusDAO implements StatusDAO {
	
	private static PsqlStatusDAO theDAO = null;

	private Connection conn;

	//This should be the only way clients get a DAO
	public static PsqlStatusDAO getDAO(String dbName, String dbUser, 
			      String dbPass) throws StatusDAOException {
		if (theDAO == null) 
			theDAO = new PsqlStatusDAO(dbName, dbUser, dbPass);
		return theDAO;
	}

	public PsqlStatusDAO(String dbName, String dbUser, String dbPass) 
	       throws StatusDAOException {
	
		try {
			Class.forName("org.postgresql.Driver");
		}
		catch (ClassNotFoundException e) {
			System.out.println("driver not found!");
			throw new StatusDAOException("Error loading database driver!");
		}

		String connStr = "jdbc:postgresql:";
		connStr += dbName + "?user=" + dbUser + "&password=" + dbPass;
		System.out.println(connStr);

		try {
			conn = DriverManager.getConnection(connStr);
		}
		catch (SQLException e) {
			System.out.println();
			throw new StatusDAOException("Error connecting to the database!");
		}
	}

	/** Returns a List of RouterResult objects.*/
	public List<RouterResult> getResults(String fingerprint, String name) 
		   throws StatusDAOException {
		List<RouterResult> searchResults = new ArrayList<RouterResult>();
	
		try {
			Statement resultStatement = conn.createStatement();
			ResultSet rs = resultStatement.executeQuery(
				"select * from statusentry where fingerprint = '" + fingerprint
				+ "*' and nickname = '" + name + "*' order by nickname;");
		
			while(rs.next()) {
				searchResults.add(new RouterResult(rs.getString("nickname"),
												   rs.getString("fingerprint"),
												   rs.getString("descriptor")));
			}
		}
		catch (SQLException e) {
			System.out.println(e);
			throw new StatusDAOException("Error performing database query!");
		}
		return searchResults;
	}
}
