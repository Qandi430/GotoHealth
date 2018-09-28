package kr.co.mlec.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mypage.do")
public class MypageController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*MemberMapper mapper  = MyAppSqlConfig.getSqlSessionInstance().getMapper(MemberMapper.class);
		HttpSession session = request.getSession();
		
		Member user = (Member) session.getAttribute("user");
		System.out.println(user.getId());
		List<Object> list = new ArrayList();
		
		if(user.getType().equals("trainer")) {
			Trainer trainer = mapper.selectTrainerById(user.getId());
			list.add(trainer);
		}
		
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.print(new Gson().toJson(list));
		out.close();*/
		String alert = request.getParameter("alert");
		request.setAttribute("alert", alert);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/member/mypage.jsp");
		rd.forward(request, response);
		
		
	}
}
