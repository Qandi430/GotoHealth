package kr.co.mlec.repository.domain;

import java.util.Date;
import java.util.List;


public class Board {
	private int no;
	private String type;
	private String category;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private int viewCnt;
	private int ref;
	private int parentNo;
	private int commentCnt;
	private int rowNum;
	private BoardFile boardFile;
	private List<BoardFile> fileList;
	private List<Comment> commentList;
	private int startRow;
	private int endRow;
	private String keyword;
	private int recomCnt;
	private String arrays;
	
	
	public BoardFile getBoardFile() {
		return boardFile;
	}
	public void setBoardFile(BoardFile boardFile) {
		this.boardFile = boardFile;
	}
	
	public String getArrays() {
		return arrays;
	}
	public void setArrays(String arrays) {
		this.arrays = arrays;
	}
	
	public int getRecomCnt() {
		return recomCnt;
	}
	public void setRecomCnt(int recomCnt) {
		this.recomCnt = recomCnt;
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	
	public int getParentNo() {
		return parentNo;
	}
	public void setParentNo(int parentNo) {
		this.parentNo = parentNo;
	}
	
	public int getCommentCnt() {
		return commentCnt;
	}
	public void setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
	}
	
	public int getRowNum() {
		return rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}
	
	public List<BoardFile> getFileList() {
		return fileList;
	}
	public void setFileList(List<BoardFile> fileList) {
		this.fileList = fileList;
	}
	
	public List<Comment> getCommentList() {
		return commentList;
	}
	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
	}
	
} // end class
