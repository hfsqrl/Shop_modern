package com.shop.md1.board.review;

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
public class ReviewService implements BoardService {
	
	@Autowired
	private ReviewMapper reviewMapper;
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		pager.makeRow();
		
		long totalCount = reviewMapper.getCount(pager);
		pager.makePage(totalCount);
		
		return reviewMapper.getList(pager);
	}
	
	@Override
	public int setInsert(BoardVO boardVO, MultipartFile [] files, HttpSession session) throws Exception {
		int result = reviewMapper.setInsert(boardVO);
		return result;
	}
	
	@Override
	public BoardVO getOne(BoardVO boardVO) throws Exception {

		return reviewMapper.getOne(boardVO);
	}

	@Override
	public int setUpdate(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int setDelete(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
