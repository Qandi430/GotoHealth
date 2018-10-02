package kr.co.mlec.repository.domain;

import java.util.Date;

public class Message {

	private int no;
	private String sender;
	private String reciver;
	private String content;
	private Date regDate;
	private String chkStatus;
	private String reciverDel;
	private String senderDel;
	private String title;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReciver() {
		return reciver;
	}
	public void setReciver(String reciver) {
		this.reciver = reciver;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getChkStatus() {
		return chkStatus;
	}
	public void setChkStatus(String chkStatus) {
		this.chkStatus = chkStatus;
	}
	public String getReciverDel() {
		return reciverDel;
	}
	public void setReciverDel(String reciverDel) {
		this.reciverDel = reciverDel;
	}
	public String getSenderDel() {
		return senderDel;
	}
	public void setSenderDel(String senderDel) {
		this.senderDel = senderDel;
	}
	@Override
	public String toString() {
		return "Message [no=" + no + ", sender=" + sender + ", reciver=" + reciver + ", content=" + content
				+ ", regDate=" + regDate + ", chkStatus=" + chkStatus + ", reciverDel=" + reciverDel + ", senderDel="
				+ senderDel + ", title=" + title + "]";
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
