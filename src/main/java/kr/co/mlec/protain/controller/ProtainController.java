package kr.co.mlec.protain.controller;

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

import kr.co.mlec.repository.domain.Protain;

@WebServlet("/protain/protain.do")
public class ProtainController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
//		public static void main(String[] args) {
			
			List<Protain> listPro = new ArrayList<>();
			try {	
//											   https://smartstore.naver.com/fitnessstore/category/ALL?page=1&st=TOTALSALE&dt=BIGIMAGE&size=40&free=false&cp=17	
				Document doc =  Jsoup.connect("https://smartstore.naver.com/fitnessstore/category/ALL?page= 1&st=POPULAR&dt=BIGIMAGE&size=40&free=false&cp=1").get();
				Elements listName = doc.select("div.lst_align > ul.sort");
				for(Element e1 : listName) {
					Elements listName2 = e1.select("li > a");
					System.out.println(listName2.html());
				}
				Elements list = doc.select("ul.lst > li");
				for(Element e : list) {
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
//				System.out.println(listPro.size());
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			request.setAttribute("listPro", listPro);
			
			// 공유가 되었다면 페이지를 이동
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/protain/product.jsp");
			
			rd.forward(request, response);
		}
	
	/*
	 * service() {
	 * 		// 크롤링 코드... - 완료
	 * 
	 *      for () {
	 *      	// Protain 클래스 생성 
	 *          // 크롤링한 데이터 설정..
	 *          // 리스트에 추가
	 *      }
	 *      
	 *      리스트를 공유영역에 설정
	 *      
	 *      JSP 이동
	 *      
	 *      // ListBoardController 참조하기
	 * }
	 */
//	}
}
