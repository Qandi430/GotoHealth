package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.Recom;


public interface BoardMapper {

	List<Board> selectBoardAllList(Board board);
	List<Board> selectBoardAllList2(Board board);
	Board selectBoardByNo(int no);
	int boardCnt(String type);
	int boardTitleCnt(Board board);
	int boardContentCnt(Board board);
	int boardTitleContentCnt(Board board);
	int boardCategoryCnt(String category);
	int boardCategoryTitleCnt(Board board);
	int boardCategoryContentCnt(Board board);
	int boardCategoryTitleContentCnt(Board board);
	List<Board> searchTitle(Board board);
	List<Board> searchContent(Board board);
	List<Board> searchTitleContent(Board board);
	List<Board> searchCategoryTitle(Board board);
	List<Board> searchCategoryContent(Board board);
	List<Board> searchCategoryTitleContent(Board board);
	List<Board> selectQnaBoard(int startRow, int endRow);
	List<Board> searchQnaTitle(Board board);
	List<Board> searchQnaContent(Board board);
	List<Board> searchQnaTitleContent(Board board);
	int getSeq();
	int recCheck(Recom recom);
	int recCount(int no);
	
	void insertBoard(Board board);
	void replyInsert(Board board);
	void recUpdate(Recom recom);
	
	void updateBoard(Board board);
	void viewCntUpdate(int no);
	
	void deleteBoard(int no);
	void deleteQnaBoard(int no);
	void recDelete(Recom recom);
	
} // end interface
