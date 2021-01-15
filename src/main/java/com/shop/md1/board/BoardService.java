package com.shop.md1.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.shop.md1.board.qna.QnaVO;
import com.shop.md1.util.Pager;

public interface BoardService {
	
	public List<BoardVO> getList(Pager pager) throws Exception;
	
	public int setInsert(BoardVO boardVO) throws Exception;
	
	public BoardVO getOne(BoardVO boardVO) throws Exception;
	
	public int setUpdate(BoardVO boardVO) throws Exception;
	
	public int setDelete(BoardVO boardVO) throws Exception;
	
	public int setReply(BoardVO boardVO) throws Exception;
	

}
