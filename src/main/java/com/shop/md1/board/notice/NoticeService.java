package com.shop.md1.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.md1.board.BoardService;
import com.shop.md1.board.BoardVO;
import com.shop.md1.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class NoticeService implements BoardService {
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		pager.makeRow();
		
		long totalCount = noticeMapper.getCount(pager);
		pager.makePage(totalCount);
		
		return noticeMapper.getList(pager);
	}
	
	@Override
	public int setInsert(BoardVO boardVO) throws Exception {
		
		int result = noticeMapper.setInsert(boardVO);
		
		return result;
	}
	
	@Override
	public BoardVO getOne(BoardVO boardVO) throws Exception {
		
		return noticeMapper.getOne(boardVO);
	}

}
