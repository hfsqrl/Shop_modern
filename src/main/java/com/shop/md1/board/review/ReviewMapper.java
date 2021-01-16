package com.shop.md1.board.review;

import org.apache.ibatis.annotations.Mapper;

import com.shop.md1.board.BoardMapper;
import com.shop.md1.board.BoardVO;

@Mapper
public interface ReviewMapper extends BoardMapper {
	
	public int setReply(BoardVO boardVO) throws Exception;
	
	public int setRefUpdate(BoardVO boardVO) throws Exception;

}
