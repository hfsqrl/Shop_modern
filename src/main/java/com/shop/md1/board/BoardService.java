package com.shop.md1.board;

import java.util.List;

import com.shop.md1.util.Pager;

public interface BoardService {
	
	public List<BoardVO> getList(Pager pager) throws Exception;
	
	public int setInsert(BoardVO boardVO) throws Exception;
	
	public BoardVO getOne(BoardVO boardVO) throws Exception;

}
