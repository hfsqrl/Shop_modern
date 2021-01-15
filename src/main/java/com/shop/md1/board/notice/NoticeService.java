package com.shop.md1.board.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.shop.md1.board.BoardService;
import com.shop.md1.board.BoardVO;
import com.shop.md1.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class NoticeService implements BoardService {
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public int setReply(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
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

	@Override
	public int setUpdate(BoardVO boardVO) throws Exception {
		int result = noticeMapper.setUpdate(boardVO);
		return result;
	}
	
	@Override
	public int setDelete(BoardVO boardVO) throws Exception {
		int result = noticeMapper.setDelete(boardVO);
		
		return result;
	}

}
