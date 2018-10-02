package kr.co.mlec.message.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Message;
import kr.co.mlec.repository.mapper.MessageMapper;

@WebServlet("/delMessage.do")
public class DeleteMessageController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String type = request.getParameter("type");
		int no = Integer.parseInt(request.getParameter("no"));
		
		MessageMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MessageMapper.class);
		
		Message sel = mapper.detailMessage(no);
		
		String statusR = sel.getReciverDel();
		String statusS = sel.getSenderDel();
		
		if(type.equals("r")){
			if(statusS.equals("y")) {
				mapper.delMessageAll(no);
			}else {
				mapper.delMessageByReciver(no);
			}
		}else if(type.equals("s")) {
			if(statusR.equals("y")) {
				mapper.delMessageAll(no);
			}else {
				mapper.delMessageAll(no);
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/mypage.do?alert=ds");
		rd.forward(request, response);
	}
	
}
