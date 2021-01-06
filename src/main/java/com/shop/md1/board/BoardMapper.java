package com.shop.md1.board;

import java.util.List;

import com.shop.md1.util.Pager;

public interface BoardMapper {
	
	public long getCount(Pager pager) throws Exception;
	
	public List<BoardVO> getList(Pager pager) throws Exception;
	
	public int setInsert(BoardVO boardVO) throws Exception;
	
	public BoardVO getOne(BoardVO boardVO) throws Exception;
	
	public int setUpdate(BoardVO boardVO) throws Exception;

}
