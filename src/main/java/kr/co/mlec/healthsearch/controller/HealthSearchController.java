package kr.co.mlec.healthsearch.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Trainer;
import kr.co.mlec.repository.mapper.HealthSearchMapper;

@WebServlet("/gth/healthsearch.do")
public class HealthSearchController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
req.setCharacterEncoding("utf-8");
		
		HealthSearchMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(HealthSearchMapper.class);
	
		List<Trainer> trainer = mapper.selectTrainer();
		
		req.setAttribute("trainer", trainer);
		RequestDispatcher rd = req.getRequestDispatcher("/jsp/healthsearch/searchMap.jsp");
		rd.forward(req, res);	}
}
