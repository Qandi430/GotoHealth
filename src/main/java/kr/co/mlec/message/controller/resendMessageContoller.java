package kr.co.mlec.message.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Message;
import kr.co.mlec.repository.mapper.MessageMapper;

@WebServlet("/resendMseeage.do")
public class resendMessageContoller extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MessageMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MessageMapper.class);
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String sender = request.getParameter("message_sender");
		String reciver = request.getParameter("message_reciver");
		String title = request.getParameter("message_title");
		String content = request.getParameter("message_content");
		
		Message message = new Message();
		message.setSender(sender);
		message.setReciver(reciver);
		message.setTitle(title);
		message.setContent(content);
		
		mapper.sendMessage(message);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/mypage.do?alert=rs");
		rd.forward(request, response);
		
	}

	
}
