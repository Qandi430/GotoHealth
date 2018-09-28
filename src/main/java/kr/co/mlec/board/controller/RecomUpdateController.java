package kr.co.mlec.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Recom;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/recomUpdate.do")
public class RecomUpdateController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		
		int no = Integer.parseInt(request.getParameter("no"));
		String id = request.getParameter("id");
		
		Recom recom = new Recom();
		recom.setNo(no);
		recom.setId(id);
		
		int result = mapper.recCheck(recom);
		
		if(result == 0) { // 추천하지 않았다면 추천 추가
			mapper.recUpdate(recom);
		} else { // 추천을 하였다면 추천 삭제
			mapper.recDelete(recom);
		}
 		
//		response.setContentType("application/json; charset=utf-8");
//		PrintWriter out = response.getWriter();
//		out.println(new Gson().toJson(like));
//		out.close();
	} // service
	
} // end class
