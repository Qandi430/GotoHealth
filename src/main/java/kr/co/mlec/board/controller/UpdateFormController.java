package kr.co.mlec.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/updateForm.do")
public class UpdateFormController extends HttpServlet {
	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		String typeParam = request.getParameter("typeParam");
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		BoardMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
	
		Board board = mapper.selectBoardByNo(no);
		
		request.setAttribute("board", board);
		request.setAttribute("typeParam", typeParam);
		request.setAttribute("pageNum", pageNum);
		HttpSession session = (HttpSession) request.getAttribute("user");	
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/community/board_update.jsp");
		rd.forward(request, response);
	} // service
	
} // end class
