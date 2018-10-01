package kr.co.mlec.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.common.file.MlecFileRenamePolicy;
import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.BoardFile;
import kr.co.mlec.repository.mapper.BoardMapper;


@WebServlet("/board/write.do")
public class WriteBoardController extends HttpServlet {

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
			
		MultipartRequest mRequest = new MultipartRequest(
				request, 
				uploadPath + datePath, // 사용자가 전송한 파일이 저장될 폴더 지정
				1024 * 1024 * 100, // 업로드될 파일의 최대 크기 지정(여러개면 통합한 크기)
				"utf-8", // 파라미터 인코딩 지정
				new MlecFileRenamePolicy() // 서버에 실제 저장되는 파일의 이름 규칙 지정
		);
		
		String type = mRequest.getParameter("writeType");
		String category = mRequest.getParameter("writeCategory");
		String title = mRequest.getParameter("title");
		String writer = mRequest.getParameter("writer");
		String content = mRequest.getParameter("content");
		
		switch (type) {
			case "notice":
				type = "공지사항";
				break;
			case "free":
				type = "자유게시판";
				break;
			case "gallery":
				type = "포토갤러리";
				break;
			case "qna":
				type = "질문과 답변";
				break;
			case "exercise":
				type = "운동방법";
				break;
		} // switch		
		
		switch (category) {
			case "notice":
				category = "공지사항";
				break;
			case "free":
				category = "자유게시판";
				break;
			case "gallery":
				category = "포토갤러리";
				break;
			case "qna":
				category = "질문과 답변";
				break;
			case "chest":
				category = "가슴";
				break;
			case "back":
				category = "등";
				break;
			case "leg":
				category = "다리";
				break;
			case "shoulder":
				category = "어깨";
				break;
			case "arm":
				category = "팔";
				break;
			case "abs":
				category = "복근";
				break;
			case "etc":
				category = "유산소";
				break;
		} // switch		

		Board board = new Board();
		board.setType(type);
		board.setCategory(category);
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);
		
		BoardMapper mapper = 
			MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
		
		mapper.insertBoard(board);

		// 파일 DB 저장
		int no = board.getNo();
		BoardFile boardFile = new BoardFile();
		boardFile.setNo(no);
		boardFile.setPath(mRequest.getParameter("photo"));
		mapper.insertFile(boardFile);
		
		switch (type) {
			case "notice":
			case "공지사항":
				response.sendRedirect("noticeList.do");
				break;
			case "free":
			case "자유게시판":
				response.sendRedirect("freeList.do");
				break;
			case "gallery":
			case "포토갤러리":
				response.sendRedirect("galleryList.do");
				break;
			case "qna":
			case "질문과 답변":
				response.sendRedirect("qnaList.do");
				break;
			} // switch	
		
		switch (category) {
			case "chest":
			case "가슴":
				response.sendRedirect("chestList.do");
				break;
			case "back":
			case "등":
				response.sendRedirect("backList.do");
				break;
			case "leg":
			case "다리":
				response.sendRedirect("legList.do");
				break;
			case "shoulder":
			case "어깨":
				response.sendRedirect("shoulderList.do");
				break;
			case "arm":
			case "팔":
				response.sendRedirect("armList.do");
				break;
			case "abs":
			case "복근":
				response.sendRedirect("absList.do");
				break;
			case "etc":
			case "유산소":
				response.sendRedirect("etcList.do");
				break;
		} // switch		
	} // service
	
} // end class
