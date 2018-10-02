package kr.co.mlec.main.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.Protain;
import kr.co.mlec.repository.mapper.BoardMapper;

@WebServlet("/main.do")
public class MainController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String alert = request.getParameter("alert");
		BoardMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		
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
		board.setType("공지사항");
		
		List<Board> list = mapper.selectBoardAllNoArraysList(board);
		
		List<Protain> listPro = new ArrayList<>();
		try {	
//										   https://smartstore.naver.com/fitnessstore/category/ALL?page=1&st=TOTALSALE&dt=BIGIMAGE&size=40&free=false&cp=17	
			Document doc =  Jsoup.connect("https://smartstore.naver.com/fitnessstore/category/ALL?page= 1&st=POPULAR&dt=BIGIMAGE&size=40&free=false&cp=1").get();
			Elements listName = doc.select("div.lst_align > ul.sort");
			for(Element e1 : listName) {
				Elements listName2 = e1.select("li > a");
				System.out.println(listName2.html());
			}
			Elements listP = doc.select("ul.lst > li");
			for(Element e : listP) {
				Elements sList2 = e.select("div > a > img");
				Elements sList3 = e.select("dl.info > dt > a:not(.scrap)");
				Elements sList4 = e.select("dl.info > dd.price > strong");
				Elements sList6 = e.select("div.ico_goods > em.best > span.png24");
				System.out.printf("\t%s\t%s\t%s\t%s\n",sList2.attr("src"), sList3.attr("title"), sList4.text(), sList6.html());
				
				Protain pro = new Protain();
				pro.setImg(sList2.attr("src"));
				pro.setTitle(sList3.attr("title"));
				pro.setPrice(sList4.text());
				listPro.add(pro);
			}
//			System.out.println(listPro.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("listPro", listPro);
		
		
		request.setAttribute("alert", alert);
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/main.jsp");
		rd.forward(request, response);
	}
}
