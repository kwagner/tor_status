

public class Router {

	private float obs_bandwidth ;
	private float max_bandwidth ;
	private float avg_bandwidth ;
	private String IP_address ;
	private String OR_port ;
	private String dir_port ;
	private String platform ;
	private String nickname ;
	private int uptime ;

	public Router(float obs_bandwidth, float max_bandwidth, float avg_bandwidth,
				  String IP_address, String OR_port, String dir_port, 
				  String platform, String nickname, int uptime) {
		this.obs_bandwidth = obs_bandwidth ;
		this.max_bandwidth = max_bandwidth ;
		this.avg_bandwidth = avg_bandwidth ;
		this.IP_address = IP_address ;
		this.OR_port = OR_port ;
		this.dir_port = dir_port ;
		this.platform = platform ;
		this.nickname = nickname ;
		this.uptime = uptime ;
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

	public String get_platform() {
		return platform ;
	}

	public String get_name() {
		return nickname ;
	}

	public String get_uptime() {
		return uptime ;
	}


}
