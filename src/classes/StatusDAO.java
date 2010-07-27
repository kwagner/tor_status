public interface StatusDAO {
	List<RouterResult> getResults(String fingerprint, String name)
		throws SQLException;
}
