package kr.co.mlec.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Member;
import kr.co.mlec.repository.mapper.MemberMapper;


@WebServlet("/naverlogin.do")
public class NaverLoginController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();
		String id = request.getParameter("email");
		String pass = request.getParameter("name");
		
		Member member = new Member();
		//이걸 받을 필요가 있나?
		member.setId(id);
		member.setPass(pass);
		MemberMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MemberMapper.class);
		Member login = mapper.selectMemberInfo(member);
		
		if(login == null) {
			// 회원가입 파트 
			List<String> list = mapper.selectMemberId();
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/member/signup.jsp");
			rd.forward(request, response);
			
		}
		
		// 로그인 성공, 사용자 정보를 관리한다.
		HttpSession session = request.getSession();
		session.setAttribute("user", login);
	}
}
