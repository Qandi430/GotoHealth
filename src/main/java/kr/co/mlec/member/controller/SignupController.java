package kr.co.mlec.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Member;
import kr.co.mlec.repository.domain.Trainer;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/signup.do")
public class SignupController extends HttpServlet{

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
		
		mapper.signUp(member);
		
		
		
		Member login = mapper.selectMemberInfo(member);
		
		if(login != null) {
			if(type.equals("trainer")) {
				Trainer trainer = new Trainer();
				trainer.setId(id);
				trainer.setInfo(" ");
				trainer.setVideo(" ");
				trainer.setGymName(" ");
				trainer.setHeight(0);
				trainer.setWeight(0);
				trainer.setHistory(" ");
				System.out.println(trainer);
				mapper.insertTrainer(trainer);
			};
			response.sendRedirect(request.getContextPath()+"/main.do");
			
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/main.do?alert=s");
			rd.forward(request, response);
		}
		
		
	}

	
}
