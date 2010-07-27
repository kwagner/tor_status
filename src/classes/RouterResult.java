/**A bean class representing a single router search result.*/
public class RouterResult {

	private String nickname;
	private String fingerprint;
	private String descriptor;//the pk for a descriptor in the database

	public RouterResult(String nickname, String fingerprint,
						String descriptor) {
		this.nickname = nickname;
		this.fingerprint = fingerprint;
		this.descriptor = descriptor;
	}

	public String getNickname() {
		return nickname;
	}

	public String getFingerprint() {
		return fingerprint;
	}

	public String getDescriptor() {
		return descriptor;
	}
}
