package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.BoardFile;
import kr.co.mlec.repository.domain.Comment;
import kr.co.mlec.repository.domain.Recom;


public interface BoardMapper {

	List<Board> selectBoardAllNoArraysList(Board board);
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
	List<Board> noArraysSearchTitle(Board board);
	List<Board> noArraysSearchContent(Board board);
	List<Board> noArraysSearchTitleContent(Board board);
	List<Board> searchCategoryTitle(Board board);
	List<Board> searchCategoryContent(Board board);
	List<Board> searchCategoryTitleContent(Board board);
	List<Board> selectQnaBoard(Board board);
	List<Board> searchQnaTitle(Board board);
	List<Board> searchQnaContent(Board board);
	List<Board> searchQnaTitleContent(Board board);
	int getSeq();
	int recCheck(Recom recom);
	int recCount(int no);
	List<Comment> selectComment(int no);
	BoardFile selectFileList(int no);
	int selectNewNoticeNumber();
	
	void insertBoard(Board board);
	void replyInsert(Board board);
	void recUpdate(Recom recom);
	void updateRecom(int no);
	void cancelRecom(int no);
	void insertComment(Comment comment);
	void insertFile(BoardFile boardFile);
	
	void updateBoard(Board board);
	void viewCntUpdate(int no);
	void updateComment(Comment comment);
	
	void deleteBoard(int no);
	void deleteQnaBoard(int no);
	void recDelete(Recom recom);
	void deleteComment(int no);
	void deleteAllComment(int no);
	void deleteFile(int no);
	
} // end interface
