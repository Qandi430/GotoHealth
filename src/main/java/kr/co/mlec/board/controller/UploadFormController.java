package kr.co.mlec.board.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.common.file.MlecFileRenamePolicy;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/uploadForm.do")
public class UploadFormController extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {

		String typeParam = request.getParameter("typeParam");
		request.setAttribute("typeParam", typeParam);
		HttpSession session = (HttpSession) request.getAttribute("user");
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/community/board_write.jsp");
		rd.forward(request, response);
	} // service
	
} // end class
