package kr.co.mlec.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/etcList.do")
public class ListExerciseEtcsBoardController extends HttpServlet {
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		
		BoardMapper mapper = 
			MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);

//		List<Board> list = mapper.selectBoardAllList();
		
/*		String col = null;
		String word = null;
		List<Board> list = null;
		
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		int count = 0;
		count = mapper.boardCnt();
		int pageCount = 0;
		int pageBlock = 0;
		int startPage = 0;
		int endPage = 0;
//		int number = 0;
		if(count > 0) {
			list = mapper.selectBoard(startRow, endRow);
//			number = count - (currentPage - 1) * pageSize;
			pageCount = (count / pageSize) + (count%pageSize == 0 ? 0 : 1);
			pageBlock = 5;
			startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
			endPage = startPage + pageBlock - 1;
			if(endPage > pageCount){
				endPage = pageCount;
			}
		}
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("startRow", startRow);
		request.setAttribute("endRow", endRow);
		request.setAttribute("pageCount", count);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("pageCount", pageCount);*/
		/*try {
			col = request.getParameter("col");
			word = request.getParameter("word");
			
			if(col.equals("title")) {
				list = mapper.searchTitle(word);
			}
			if(col.equals("content")) {
				list = mapper.searchContent(word);
			}
			if(col.equals("title_content")) {
				list = mapper.searchTitleContent(word);
			}
			if(col == "") {
				list = mapper.selectBoard();
			}
		} catch (Exception e) {
			list = mapper.selectBoard();
		}*/

		// 준비된 데이터를 공유
//		request.setAttribute("list", list);
//		request.setAttribute("col", col);
//		request.setAttribute("word", word);

		HttpSession session = (HttpSession) request.getAttribute("user");
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/community/exerciseEtc_list.jsp");
		rd.forward(request, response);
	} // service
	
} // end class
