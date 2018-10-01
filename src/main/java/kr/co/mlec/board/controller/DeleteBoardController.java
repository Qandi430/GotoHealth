package kr.co.mlec.board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.BoardFile;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/delete.do")
public class DeleteBoardController extends HttpServlet {
	
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		
		request.setCharacterEncoding("utf-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		String typeParam = request.getParameter("typeParam");
		
		BoardMapper mapper = 
			MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		
/*		BoardFile boardFile = mapper.selectFileList(no);
		if(boardFile != null) {
			File f = new File(boardFile.getPath());
			f.delete();
		}*/
		
		mapper.deleteFile(no);
		mapper.deleteAllComment(no);
		
		if(typeParam.equals("qna")) {
			mapper.deleteQnaBoard(no);
		} else {
			mapper.deleteBoard(no);
		}
		
		switch (typeParam) {
			case "notice":
				response.sendRedirect("noticeList.do");
				break;
			case "free":
				response.sendRedirect("freeList.do");
				break;
			case "gallery":
				response.sendRedirect("galleryList.do");
				break;
			case "qna":
				response.sendRedirect("qnaList.do");
				break;
			case "exercise":
				response.sendRedirect("exerciseList.do");
				break;
			case "exerciseChest":
				response.sendRedirect("chestList.do");
				break;
			case "exerciseBack":
				response.sendRedirect("backList.do");
				break;
			case "exerciseLeg":
				response.sendRedirect("legList.do");
				break;
			case "exerciseShoulder":
				response.sendRedirect("shoulderList.do");
				break;
			case "exerciseArm":
				response.sendRedirect("armList.do");
				break;
			case "exerciseAbs":
				response.sendRedirect("absList.do");
				break;
			case "exerciseEtc":
				response.sendRedirect("etcList.do");
				break;
		} // switch	
	
	} // service
	
} // end class
