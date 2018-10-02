package kr.co.mlec.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.BoardFile;
import kr.co.mlec.repository.domain.Comment;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/detail.do")
public class DetailBoardController extends HttpServlet {
	
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		String typeParam = request.getParameter("typeParam");
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		BoardMapper mapper = 
			MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		mapper.viewCntUpdate(no);
		Board board = mapper.selectBoardByNo(no);
		
//		List<Comment> cList = new ArrayList<>();
//		cList = mapper.commentList(no);
//		
//		board.setCommentList(cList);
		
		HttpSession session = (HttpSession) request.getAttribute("user");
		request.setAttribute("board", board);		
		request.setAttribute("typeParam", typeParam);
		request.setAttribute("pageNum", pageNum);
//		request.setAttribute("comment", comment);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/community/board_detail.jsp");
		rd.forward(request, response);
	} // service	
	
} // end class