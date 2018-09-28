package kr.co.mlec.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.common.file.MlecFileRenamePolicy;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.BoardFile;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/reply.do")
public class ReplyController extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		
		BoardMapper mapper = 
			MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);

		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");

//		int seq = mapper.getSeq();

		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int ref = Integer.parseInt(request.getParameter("ref"));
		
		int parentNo = Integer.parseInt(request.getParameter("parentNo"));
//		if(parent == 0) ref = seq;
		
		Board board = new Board();
//		board.setNo(seq);
		board.setWriter(writer);
		board.setTitle(title);
		board.setContent(content);
		board.setType("질문과 답변");
		board.setCategory("질문과 답변");
		board.setRef(ref);
		board.setParentNo(boardNo);
		mapper.replyInsert(board);
		
		response.sendRedirect("qnaList.do");
	} // service
} // end class
