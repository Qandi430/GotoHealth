package kr.co.mlec.repository.domain;


public class BoardFile {
	private int fileNo;
	private int no;	
	private String fileOri;
	private String fileSys;
	private String path;
	private int fileSize;
	
	
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getFileOri() {
		return fileOri;
	}
	public void setFileOri(String fileOri) {
		this.fileOri = fileOri;
	}
	
	public String getFileSys() {
		return fileSys;
	}
	public void setFileSys(String fileSys) {
		this.fileSys = fileSys;
	}
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	public int getFileSize() {
		return fileSize;
	}
	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}
	
} // end class
