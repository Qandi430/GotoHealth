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
import kr.co.mlec.repository.domain.BoardFile;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/writeForm.do")
public class WriteFormController extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {

		request.setCharacterEncoding("utf-8");
		String uploadPath = "C:/app/upload";
		
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
		String datePath = sdf.format(new Date());
		
		File file = new File(uploadPath + datePath); 
		if(file.exists() == false) {
			file.mkdirs();
		} // if
		
		BoardMapper mapper = 
				MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		
		MultipartRequest mRequest = new MultipartRequest(
			request, 
			uploadPath + datePath, // 사용자가 전송한 파일이 저장될 폴더 지정
			1024 * 1024 * 100, // 업로드될 파일의 최대 크기 지정(여러개면 통합한 크기)
			"utf-8", // 파라미터 인코딩 지정
			new MlecFileRenamePolicy() // 서버에 실제 저장되는 파일의 이름 규칙 지정
		);
		
		Enumeration<String> list = mRequest.getFileNames();
		while(list.hasMoreElements()) {
			String fName = list.nextElement();
			File f1 = mRequest.getFile(fName);
			
			if(f1 != null) {
				System.out.println("파일 사이즈(byte) : " + f1.length());
				String oriName = mRequest.getOriginalFileName(fName);
				System.out.println("원본파일명  : " + oriName);
				String systemName = mRequest.getFilesystemName(fName);
				System.out.println("서버파일명 : " + systemName);
				response.setContentType("application/json; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println(new Gson().toJson("http://localhost:8000/local_img" + datePath + "/" + systemName));
				out.close();
			} // if
		} // while
	} // service
	
} // end class
