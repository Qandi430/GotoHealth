package kr.co.mlec.board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Comment;
import kr.co.mlec.repository.mapper.BoardMapper;



@WebServlet("/board/commentupdate.do")
public class UpdateCommentController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		int cno = Integer.parseInt(request.getParameter("cno"));
		String content = request.getParameter("content");
		Comment comment = new Comment();
		comment.setCommentNo(cno);
		comment.setContent(content);
		
		mapper.updateComment(comment);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(comment));
		out.close();

	} // service
	
} // end class