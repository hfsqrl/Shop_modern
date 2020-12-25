package com.shop.md1.board.notice;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.md1.board.BoardService;
import com.shop.md1.board.BoardVO;
import com.shop.md1.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class NoticeService implements BoardService {
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
