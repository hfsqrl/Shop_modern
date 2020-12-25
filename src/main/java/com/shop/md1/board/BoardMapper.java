package com.shop.md1.board;

import java.util.List;

import com.shop.md1.util.Pager;

public interface BoardMapper {
	
	public List<BoardVO> getList(Pager pager) throws Exception;

}
