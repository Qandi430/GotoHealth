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

@WebServlet("/updateMember.do")
public class UpdateMemberController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		MemberMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MemberMapper.class);
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("member_id");
		String name = request.getParameter("member_name");
		String pass = request.getParameter("member_pw");
		String mail = request.getParameter("member_mail");
		String addr1 = request.getParameter("member_addr1");
		String addr2 = request.getParameter("member_addr2");
		String addr3 = request.getParameter("member_addr3");
		String postnum = request.getParameter("member_zipNo");
		String type = request.getParameter("member_type");
		
		
		Member member = new Member();
		member.setId(id);
		member.setPass(pass);
		member.setName(name);
		member.setEmail(mail);
		member.setAddr1(addr1);
		member.setAddr2(addr2);
		member.setAddr3(addr3);
		member.setPostnum(postnum);
		member.setType(type);
		
		mapper.updateMember(member);
		
		HttpSession session = request.getSession();
		session.setAttribute("user", member);
		RequestDispatcher rd = request.getRequestDispatcher("/mypage.do?alert=s");
		rd.forward(request, response);
		
	}
}
