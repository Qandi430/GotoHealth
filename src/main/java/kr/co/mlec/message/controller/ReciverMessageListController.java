package kr.co.mlec.message.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Message;
import kr.co.mlec.repository.mapper.MessageMapper;

@WebServlet("/reciverMessageList.do")
public class ReciverMessageListController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MessageMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MessageMapper.class);
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		List<Message> message = mapper.selectByReciver(id);
		

		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.print(new Gson().toJson(message));
		out.close();
	}

	
}
