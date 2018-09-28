package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Member;
import kr.co.mlec.repository.domain.Trainer;

public interface MemberMapper {
	Member selectMemberInfo(Member member);
	List<String> selectMemberId();
	void signUp(Member member);
	void insertTrainer(Trainer trainer);
	Trainer selectTrainerById(String id);
	void updateMember(Member member);
	void deleteMember(String id);
}
