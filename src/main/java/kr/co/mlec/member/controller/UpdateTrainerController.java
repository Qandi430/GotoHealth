package kr.co.mlec.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.mlec.common.db.MyAppSqlConfig;
import kr.co.mlec.common.file.MlecFileRenamePolicy;
import kr.co.mlec.repository.domain.Trainer;
import kr.co.mlec.repository.domain.TrainerFile;
import kr.co.mlec.repository.mapper.MemberMapper;
import net.coobird.thumbnailator.Thumbnails;

@WebServlet("/updateTrainer.do")
public class UpdateTrainerController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uploadPath = "C:/app/upload";

		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/hh");
		String datePath = sdf.format(new Date());
		File file = new File(uploadPath+datePath);
		
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		MultipartRequest mRequest = new MultipartRequest(
				request,
				uploadPath+datePath, // 사용자가 전송한 파일이 저장될 폴더 지정
				1024*1024*1000,// 업로드 될 파일의 최대 크기 지정
				"utf-8", //파라미터 인코딩 지정
				new MlecFileRenamePolicy() // 서버에 실제 저장되는 파일의 이름 규칙 지정
		); 
		
		
		MemberMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MemberMapper.class);
		String id = mRequest.getParameter("member_id");
		String info = mRequest.getParameter("trainer_info");
		String video = mRequest.getParameter("trainer_video");
		String gymName = mRequest.getParameter("trainer_gymName");
		int height = Integer.parseInt(mRequest.getParameter("trainer_height"));
		int weight = Integer.parseInt(mRequest.getParameter("trainer_weight"));
		String history = mRequest.getParameter("trainer_history");
		
		Trainer trainer = new Trainer();
		
		trainer.setId(id);
		trainer.setInfo(info);
		trainer.setVideo(video);
		trainer.setGymName(gymName);
		trainer.setHeight(height);
		trainer.setWeight(weight);
		trainer.setHistory(history);
		
		mapper.updateTrainer(trainer);
		
		Enumeration<String> list =mRequest.getFileNames();
 		
 		while(list.hasMoreElements()) {
 			String fName = list.nextElement();
 			File f = mRequest.getFile(fName);
 			TrainerFile tf = new TrainerFile();
 			tf.setFilePath(datePath);
 			if(f != null) {
 				tf.setId(id);
 				System.out.println("파일 사이즈 (byte) : "+ f.length());
 	 			//사용자가 선택한 원본 파일명
 	 			String oriName=mRequest.getOriginalFileName(fName);
 	 			System.out.println("원본 파일명 : "+oriName);
 	 			tf.setFileOri(oriName);
 	 			// 서버에 실제 저장된 파일명 가져오기
 	 			String systemName=mRequest.getFilesystemName(fName);
 	 			System.out.println("서버 파일명 : "+systemName);
 	 			tf.setFileName(systemName);
 	 			
 	 			//원본 파일의 정보를 참조하여 썸네을을 생성한다.
 	 			Thumbnails.of(new File(f.getParent(), systemName))
 	 					  .size(300, 200)
 	 					  .outputFormat("jpg")
 	 					  .toFile(new File(f.getParent(),"thumb_" + systemName));;
 	 		}
 			mapper.insertTrainerFile(tf);
 		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/mypage.do?alert=s");
		rd.forward(request, response);
	}
}
