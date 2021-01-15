package com.shop.md1.board.qna;

import org.apache.ibatis.annotations.Mapper;

import com.shop.md1.board.BoardMapper;
import com.shop.md1.board.BoardVO;

@Mapper
public interface QnaMapper extends BoardMapper {
	
	public int setRefUpdate(BoardVO boardVO) throws Exception;
	
	public int setInsert(QnaVO qnaVO) throws Exception;

}
