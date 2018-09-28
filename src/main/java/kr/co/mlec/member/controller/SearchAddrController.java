package kr.co.mlec.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchAddr.do")
public class SearchAddrController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");  //한글깨지면 주석제거
		//request.setCharacterEncoding("EUC-KR");  //해당시스템의 인코딩타입이 EUC-KR일경우에
		String inputYn = request.getParameter("inputYn"); 
		String roadFullAddr = request.getParameter("roadFullAddr"); 
		String roadAddrPart1 = request.getParameter("roadAddrPart1"); 
		String roadAddrPart2 = request.getParameter("roadAddrPart2"); 
		String engAddr = request.getParameter("engAddr"); 
		String jibunAddr = request.getParameter("jibunAddr"); 
		String zipNo = request.getParameter("zipNo"); 
		String addrDetail = request.getParameter("addrDetail"); 
		String admCd    = request.getParameter("admCd");
		String rnMgtSn = request.getParameter("rnMgtSn");
		String bdMgtSn  = request.getParameter("bdMgtSn");
		String detBdNmList  = request.getParameter("detBdNmList");	
		/** 2017년 2월 추가제공 **/
		String bdNm  = request.getParameter("bdNm");
		String bdKdcd  = request.getParameter("bdKdcd");
		String siNm  = request.getParameter("siNm");
		String sggNm  = request.getParameter("sggNm");
		String emdNm  = request.getParameter("emdNm");
		String liNm  = request.getParameter("liNm");
		String rn  = request.getParameter("rn");
		String udrtYn  = request.getParameter("udrtYn");
		String buldMnnm  = request.getParameter("buldMnnm");
		String buldSlno  = request.getParameter("buldSlno");
		String mtYn  = request.getParameter("mtYn");
		String lnbrMnnm  = request.getParameter("lnbrMnnm");
		String lnbrSlno  = request.getParameter("lnbrSlno");
		/** 2017년 3월 추가제공 **/
		String emdNo  = request.getParameter("emdNo");
		System.out.println(roadFullAddr);
		/*Attributte Set*/
		request.setAttribute("inputYn", inputYn);
		request.setAttribute("roadFullAddr", roadFullAddr);
		request.setAttribute("roadAddrPart1", roadAddrPart1);
		request.setAttribute("roadAddrPart2", roadAddrPart2);
		request.setAttribute("engAddr", engAddr);
		request.setAttribute("jibunAddr", jibunAddr);
		request.setAttribute("zipNo", zipNo);
		request.setAttribute("addrDetail", addrDetail);
		request.setAttribute("admCd", admCd);
		request.setAttribute("rnMgtSn", rnMgtSn);
		request.setAttribute("bdMgtSn", bdMgtSn);
		request.setAttribute("detBdNmList", detBdNmList);
		/**2017년 2월 추가 제공**/
		request.setAttribute("bdNm", bdNm);
		request.setAttribute("bdKdcd", bdKdcd);
		request.setAttribute("siNm", siNm);
		request.setAttribute("sggNm", sggNm);
		request.setAttribute("emdNm", emdNm);
		request.setAttribute("liNm", liNm);
		request.setAttribute("rn", rn);
		request.setAttribute("udrtYn", udrtYn);
		request.setAttribute("buldMnnm", buldMnnm);
		request.setAttribute("buldSlno", buldSlno);
		request.setAttribute("mtYn", mtYn);
		request.setAttribute("lnbrMnnm", lnbrMnnm);
		request.setAttribute("lnbrSlno", lnbrSlno);
		
		/**2017년 3월 추가제공**/
		request.setAttribute("emdNo", emdNo);
		
	}

}
