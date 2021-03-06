package kr.co.mlec.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/deleteMember.do")
public class DeleteMemberController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MemberMapper.class);
		
		String id = request.getParameter("id");
		mapper.deleteMember(id);
		
		// 로그인 성공, 사용자 정보를 관리한다.
		HttpSession session = request.getSession();
		session.invalidate();
		//메인 페이지로 이동하기 (세션에 저장하기 때문에 foward필요없음)
		RequestDispatcher rd = request.getRequestDispatcher("/main.do?alert=d");
		rd.forward(request, response);
	}

	
}
