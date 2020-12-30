package com.shop.md1.board.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.md1.board.BoardService;
import com.shop.md1.board.BoardVO;
import com.shop.md1.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class QnaService implements BoardService {
	
	@Autowired
	private QnaMapper qnaMapper;
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		
		return null;
	}
	
	@Override
	public int setInsert(BoardVO boardVO) throws Exception {
		int result = qnaMapper.setInsert(boardVO);
		return result;
	}
	
	@Override
	public BoardVO getOne(BoardVO boardVO) throws Exception {

		return qnaMapper.getOne(boardVO);
	}

}
