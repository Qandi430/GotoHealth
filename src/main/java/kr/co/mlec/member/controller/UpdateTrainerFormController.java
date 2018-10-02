package kr.co.mlec.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Trainer;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/updateTrainerForm.do")
public class UpdateTrainerFormController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MemberMapper.class);
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		Trainer trainer = mapper.selectTrainerById(id);
		
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.print(new Gson().toJson(trainer));
		out.close();
	}
}
