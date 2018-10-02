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
import kr.co.mlec.repository.domain.Trainer;
import kr.co.mlec.repository.mapper.MemberMapper;

@WebServlet("/updateTrainer.do")
public class UpdateTrainerController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MemberMapper.class);
		String id = request.getParameter("member_id");
		String info = request.getParameter("trainer_info");
		String video = request.getParameter("trainer_video");
		String gymName = request.getParameter("trainer_gymName");
		int height = Integer.parseInt(request.getParameter("trainer_height"));
		int weight = Integer.parseInt(request.getParameter("trainer_weight"));
		String history = request.getParameter("trainer_history");
		
		Trainer trainer = new Trainer();
		
		trainer.setId(id);
		trainer.setInfo(info);
		trainer.setVideo(video);
		trainer.setGymName(gymName);
		trainer.setHeight(height);
		trainer.setWeight(weight);
		trainer.setHistory(history);
		
		mapper.updateTrainer(trainer);
		
		RequestDispatcher rd = request.getRequestDispatcher("/mypage.do?alert=s");
		rd.forward(request, response);
	}
}
