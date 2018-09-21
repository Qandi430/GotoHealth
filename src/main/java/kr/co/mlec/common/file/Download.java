package kr.co.mlec.common.file;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/common/file/down")
public class Download extends HttpServlet {
	
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		/*
		 * 공용으로 파일을 다운로드 받기 위한 필수 요구사항
		 * 
		 * - 서버에 저장되어 있는 실제 파일명(name)
		 * - 파일이 저장되어 있는 경로(path)
		 * - 다운로드 여부(dname 파라미터가 존재하는 경우 다운, 않는 경우 이미지를 화면에 출력)
		 */
		
		// http://localhost:8000/08_servletjsp/common/file/
		// down?name=caspdfopsfj2.jpg&path=/2018/09/06/13		서버에 있는거 읽기
		// &dname=flower.jpg	사용자에게 저장시킴
		String name = request.getParameter("name");
		String path = request.getParameter("path");
		
		// 다운로드할 파일 이름
		String dname = request.getParameter("dname");
		
		
		
		// dname의 존재여부에 따라서 화면 출력 또는 다운로드 처리한다.
		if(dname == null) {
			response.setHeader("Content-Type", "image/jpg");
		}
		// 다운로드
		else {
			// 파일을 다운로드 시켜라
			response.setHeader("Content-Type", "application/octet-stream");		
			
			// 다운로드할 파일 이름 처리하기
			dname = new String(dname.getBytes("utf-8"), "8859_1");
			response.setHeader("Content-Disposition", "attachment;filename=" + dname);
		} // if-else		
		
		// 다운로드 또는 화면에 보여질 파일의 위치
		String uploadPath = "c:/app/upload";
		File f = new File(uploadPath + path, name);
		
		FileInputStream fis = new FileInputStream(f);
		BufferedInputStream bis = new BufferedInputStream(fis);
		
		OutputStream out = response.getOutputStream();
		BufferedOutputStream bos = new BufferedOutputStream(out);
		
		while(true) {
			int ch = bis.read();
			if(ch==-1) break;
			bos.write(ch);
		} // while
		
		bis.close(); fis.close(); bos.close(); out.close();
	} // service
	
} // end class
