package kr.co.mlec.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/board/writeForm.do")
public class WriteFormController extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		
		String typeParam = request.getParameter("typeParam");
		request.setAttribute("typeParam", typeParam);
		HttpSession session = (HttpSession) request.getAttribute("user");
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/community/board_write.jsp");
		rd.forward(request, response);
	} // service
	
} // end class
