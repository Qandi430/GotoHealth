package kr.co.mlec.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

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



@WebServlet("/login.do")
public class LoginController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		Member member = new Member();
		member.setId(id);
		member.setPass(pass);
		MemberMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MemberMapper.class);
		Member login = mapper.selectMemberInfo(member);
		
		if(login==null) {
			out.println("<script>");
			out.println("alert('등록된 회원정보가 올바르지 않습니다.');");
			out.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("/main.do?alert=y");
			rd.forward(request, response);
		}else {
			// 로그인 성공, 사용자 정보를 관리한다.
			HttpSession session = request.getSession();
			session.setAttribute("user", login);
			//메인 페이지로 이동하기 (세션에 저장하기 때문에 foward필요없음)
			response.sendRedirect(request.getContextPath()+"/main.do");
		}
	}
	
}
