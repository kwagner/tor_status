/**
public class Router {

	private float obs_bandwidth ;
	private float max_bandwidth ;
	private float avg_bandwidth ;
	private String IP_address ;
	private String OR_port ;
	private String dir_port ;
	private String hostname ;
	private String platform ;
	private String version ;
	private String nickname ;
	private String fingerprint ;
	private String contact ;
	private String family ;
	private String country ;
	private String last_published ;
	private int uptime ;
	private String[] exit_policy ;
	//flags:
	private boolean authority ;
	private boolean bad_dir ;
	private boolean bad_exit ;
	private boolean exit ;
	private boolean fast ;
	private boolean guard ;
	private boolean hibernating ;
	private boolean hs_dir ; //v2 hidden service directory
	private boolean named ;
	private boolean running ;
	private boolean stable ;
	private boolean valid ;
	private boolean v2 ;
	private boolean v3 ;

	public Router(float obs_bandwidth, float max_bandwidth, float avg_bandwidth,
				  String IP_address, String OR_port, String dir_port, 
				  String hostname, String platform, String version, 
				  String nickname, String fingerprint, String contact, 
				  String family, String country, String last_published, 
				  int uptime, String[] exit_policy) {
		this.obs_bandwidth = obs_bandwidth ;
		this.max_bandwidth = max_bandwidth ;
		this.avg_bandwidth = avg_bandwidth ;
		this.IP_address = IP_address ;
		this.OR_port = OR_port ;
		this.dir_port = dir_port ;
		this.hostname = hostname ;
		this.platform = platform ;
		this.version = version ;
		this.nickname = nickname ;
		this.fingerprint = fingerprint ;
		this.contact = contact ;
		this.family = family ;
		this.country = country ;
		this.last_published = last_published ;
		this.uptime = uptime ;
		this.exit_policy = exit_policy

		if (!nickname.equals("Unnamed")) named = false ;
		else named = false ;

		this.exit = false ;
		for (int i=0; i<exit_policy.length; i++) {
			if (exit_policy[i].startsWith("accept") && 
			   (exit_policy.endsWith("*:*") || (exit_policy.endsWith(":80")))
				this.exit = true ;
				break ;
			}
		}
	}

	public float get_bandwidth_obs() {
		return obs_bandwidth ;
	}

	public float get_bandwidth_avg() {
		return avg_bandwidth ;
	}

	public float get_bandwidth_max() {
		return max_bandwidth ;
	}

	public String get_IP() {
		return IP_address ;
	}

	public String get_OR_port() {
		return OR_port ;
	}

	public String get_dir_port() {
		return dir_port ;
	}

	public String get_hostname() {
		return hostname ;
	}

	public String get_platform() {
		return platform ;
	}

	public String get_version() {
		return version ;
	}

	public String get_name() {
		return nickname ;
	}

	public String get_fingerprint() {
		return fingerprint ;
	}

	public String get_contact() {
		return contact ;
	}

	public String get_family() {
		return family ;
	}

	public String get_country() {
		return country ;
	}

	public String get_last_published() {
		return last_published ;
	}

	public String get_uptime() {
		return uptime ;
	}

	public String[] get_exit_policy() {
		return exit_policy;
	}

	public boolean is_auth() {
		return authority ;
	}

	public boolean is_bad_dir() {
		return bad_dir ;
	}

	public boolean is_bad_exit() {
		return bad_exit ;
	}

	public boolean is_exit() {
		return exit ;
	}

	public boolean is_fast() {
		return fast ;
	}

	public boolean is_guard() {
		return guard ;
	}

	public boolean is_hibernating() {
		return hibernating ;
	}

	public boolean is_hs_dir() {
		return hs_dir ;
	}

	public boolean is_named() {
		return named ;
	}

	public boolean is_running() {
		return running ;
	}

	public boolean is_stable() {
		return stable ;
	}

	public boolean is_valid() {
		return valid ;
	}

	public boolean is_v2() {
		return v2 ;
	}

	public boolean is_v3() {
		return v3 ;
	}
}*/
