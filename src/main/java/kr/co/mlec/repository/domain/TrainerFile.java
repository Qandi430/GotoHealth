package kr.co.mlec.repository.domain;

public class TrainerFile {

	private int no;
	private String id;
	private String fileOri;
	private String fileName;
	private String filePath;
	private double fileSize;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFileOri() {
		return fileOri;
	}
	public void setFileOri(String fileOri) {
		this.fileOri = fileOri;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public double getFileSize() {
		return fileSize;
	}
	public void setFileSize(double fileSize) {
		this.fileSize = fileSize;
	}
	@Override
	public String toString() {
		return "TrainerFile [no=" + no + ", id=" + id + ", fileOri=" + fileOri + ", fileName=" + fileName
				+ ", filePath=" + filePath + ", fileSize=" + fileSize + "]";
	}
	
}
