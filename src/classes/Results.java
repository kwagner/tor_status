//Search results bean
public class Results {

	private String name;
	private String fingerprint;

	public Results(String name, String fingerprint) {
		this.name = name;
		this.fingerprint = fingerprint;
	}

	public String getName() {
		return name;
	}

	public String getFingerprint() {
		return fingerprint;
	}
}


