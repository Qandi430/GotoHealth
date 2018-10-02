package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Message;

public interface MessageMapper {

	List<Message> selectByReciver(String id);
	List<Message> selectBySender(String id);
	Message detailMessage(int no);
	void changeStatus(int no);
	void sendMessage(Message message);
	
	void delMessageByReciver(int no);
	void delMessageBySender(int no);
	void delMessageAll(int no);
}
