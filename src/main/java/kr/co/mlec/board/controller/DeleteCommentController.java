package kr.co.mlec.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/commentdelete.do")
public class DeleteCommentController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		int cno = Integer.parseInt(request.getParameter("cno"));

		mapper.deleteComment(cno);

	} // service
	
} // end class
