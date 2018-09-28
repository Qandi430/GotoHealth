package kr.co.mlec.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.common.file.MlecFileRenamePolicy;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.BoardFile;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/write.do")
public class WriteBoardController extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");

		String type = request.getParameter("writeType");
		String category = request.getParameter("writeCategory");
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		switch (type) {
			case "notice":
				type = "공지사항";
				break;
			case "free":
				type = "자유게시판";
				break;
			case "gallery":
				type = "포토갤러리";
				break;
			case "qna":
				type = "질문과 답변";
				break;
			case "exercise":
				type = "운동방법";
				break;
		} // switch		
		
		switch (category) {
			case "notice":
				category = "공지사항";
				break;
			case "free":
				category = "자유게시판";
				break;
			case "gallery":
				category = "포토갤러리";
				break;
			case "qna":
				category = "질문과 답변";
				break;
			case "chest":
				category = "가슴";
				break;
			case "back":
				category = "등";
				break;
			case "leg":
				category = "다리";
				break;
			case "shoulder":
				category = "어깨";
				break;
			case "arm":
				category = "팔";
				break;
			case "abs":
				category = "복근";
				break;
			case "etc":
				category = "유산소";
				break;
		} // switch		

		Board board = new Board();
		board.setType(type);
		board.setCategory(category);
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);
		
		BoardMapper mapper = 
			MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		
		mapper.insertBoard(board);
		
		switch (type) {
			case "notice":
			case "공지사항":
				response.sendRedirect("noticeList.do");
				break;
			case "free":
			case "자유게시판":
				response.sendRedirect("freeList.do");
				break;
			case "gallery":
			case "포토갤러리":
				response.sendRedirect("galleryList.do");
				break;
			case "qna":
			case "질문과 답변":
				response.sendRedirect("qnaList.do");
				break;
			} // switch	
		
		switch (category) {
			case "chest":
			case "가슴":
				response.sendRedirect("chestList.do");
				break;
			case "back":
			case "등":
				response.sendRedirect("backList.do");
				break;
			case "leg":
			case "다리":
				response.sendRedirect("legList.do");
				break;
			case "shoulder":
			case "어깨":
				response.sendRedirect("shoulderList.do");
				break;
			case "arm":
			case "팔":
				response.sendRedirect("armList.do");
				break;
			case "abs":
			case "복근":
				response.sendRedirect("absList.do");
				break;
			case "etc":
			case "유산소":
				response.sendRedirect("etcList.do");
				break;
		} // switch		
	} // service
	
} // end class
