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


@WebServlet("/board/legList.do")
public class ListExerciseLegBoardController extends HttpServlet {
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		
		BoardMapper mapper = 
			MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);

		String search = request.getParameter("search");
		String word = request.getParameter("word");
		String arrays = null;
		
		try {
			arrays = request.getParameter("arrays");
			if(arrays == null) {
				arrays = "reg_date";
			}
			if(arrays.equals("regDate")) {
				arrays = "reg_date";
			}
			if(arrays.equals("viewCnt")) {
				arrays = "view_cnt";
			}
			if(arrays.equals("recomCnt")) {
				arrays = "recom_cnt";
			}
		} catch (Exception e) {
			arrays = "reg_date";
		}
		
		List<Board> list = null;
		Board board = new Board();
		
		int pageSize = 5;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		board.setStartRow(startRow);
		board.setEndRow(endRow);
		board.setCategory("다리");
		board.setArrays(arrays);
		int count = 0;
		board.setKeyword(word);
		try {
			if(search.equals("title")) {
				if(word != null) {
					count = mapper.boardCategoryTitleCnt(board);
				}
			}
			if(search.equals("content")) {
				if(word != null) {
					count = mapper.boardCategoryContentCnt(board);
				}
			}
			if(search.equals("titlecontent")) {
				if(word != null) {
					count = mapper.boardCategoryTitleContentCnt(board);
				}
			}
			if(search == "") {
				count = mapper.boardCategoryCnt("다리");
			}
		} catch (Exception e) {
			count = mapper.boardCategoryCnt("다리");
		}
		int pageCount = 0;
		int pageBlock = 0;
		int startPage = 0;
		int endPage = 0;
		if(count > 0) {
//			list = mapper.selectBoardAllList2(board);
			pageCount = (count / pageSize) + (count%pageSize == 0 ? 0 : 1);
			pageBlock = 5;
			startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
			endPage = startPage + pageBlock - 1;
			if(endPage > pageCount){
				endPage = pageCount;
			} // inner if
		} // outer if
		
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("startRow", startRow);
		request.setAttribute("endRow", endRow);
		request.setAttribute("count", count);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("arrays", arrays);

		try {
			board.setKeyword(word);
			
			if(search.equals("title")) {
				list = mapper.searchCategoryTitle(board);
			}
			if(search.equals("content")) {
				list = mapper.searchCategoryContent(board);
			}
			if(search.equals("titlecontent")) {
				list = mapper.searchCategoryTitleContent(board);
			}
			if(search == "") {
				list = mapper.selectBoardAllList2(board);
			}
		} catch (Exception e) {
			list = mapper.selectBoardAllList2(board);
		}

		request.setAttribute("list", list);
		if(search != "") {
			request.setAttribute("search", search);
			request.setAttribute("word", word);
		} 
		
		int newNoticeNo = mapper.selectNewNoticeNumber();
		Board newNotice = mapper.selectBoardByNo(newNoticeNo); 
		request.setAttribute("newNotice", newNotice);
		
		HttpSession session = (HttpSession) request.getAttribute("user");
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/community/exerciseLeg_list.jsp");
		rd.forward(request, response);
	} // service
	
} // end class
