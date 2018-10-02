package kr.co.mlec.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/update.do")
public class UpdateBoardController extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String typeParam = request.getParameter("typeParam");
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		Board board = new Board();
		board.setNo(no);
		board.setTitle(title);
		board.setContent(content);
		
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		mapper.updateBoard(board);
		
		response.sendRedirect("detail.do?no=" + no + "&typeParam=" + typeParam + "&pageNum=" + pageNum);
	} // service
	
} // end class
