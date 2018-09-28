package kr.co.mlec.repository.domain;

public class Trainer {
	private String id;
	private String info;
	private String video;
	private String gymName;
	private int height;
	private int weight;
	private String history;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	public String getGymName() {
		return gymName;
	}
	public void setGymName(String gymName) {
		this.gymName = gymName;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getHistory() {
		return history;
	}
	public void setHistory(String history) {
		this.history = history;
	}
	@Override
	public String toString() {
		return "Trainer [id=" + id + ", info=" + info + ", video=" + video + ", gymName=" + gymName + ", height="
				+ height + ", weight=" + weight + ", history=" + history + "]";
	}
	
}
