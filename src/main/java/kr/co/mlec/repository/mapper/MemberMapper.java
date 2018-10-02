package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Member;
import kr.co.mlec.repository.domain.Trainer;

public interface MemberMapper {
	//회원 찾기 - 로그인
	Member selectMemberInfo(Member member);
	//아이디 중복체크
	List<String> selectMemberId();
	//회원가입
	void signUp(Member member);
	//회원정보 수정
	void updateMember(Member member);
	//회원 탈퇴
	void deleteMember(String id);
	
	/*트레이너*/
	//회원가입시 트레이너 자동등록
	void insertTrainer(Trainer trainer);
	//트레이너 정보
	Trainer selectTrainerById(String id);
	//트레이너 정보 수정
	void updateTrainer(Trainer trainer);
}
