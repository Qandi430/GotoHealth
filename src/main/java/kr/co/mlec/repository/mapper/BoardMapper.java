package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Board;


public interface BoardMapper {

//	List<Board> selectBoardAllList();
	List<Board> selectBoardAllList(Board board);
	List<Board> selectBoardAllList2(Board board);
	Board selectBoardByNo(int no);
	int boardCnt(String type);
	int boardCategoryCnt(String category);
	
	void insertBoard(Board board);
	
	void updateBoard(Board board);
	void viewCntUpdate(int no);
	
	void deleteBoard(int no);
	
} // end interface
