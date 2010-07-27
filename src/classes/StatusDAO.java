import java.util.List;
import java.sql.SQLException;
	
public interface StatusDAO {
	List<RouterResult> getResults(String fingerprint, String name)
		throws SQLException;
}
