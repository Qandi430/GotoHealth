package kr.co.mlec.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/signupForm.do")
public class SignupFormController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MemberMapper.class);
		List<String> list = mapper.selectMemberId();
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/member/signup.jsp");
		rd.forward(request, response);
	}
	
}
