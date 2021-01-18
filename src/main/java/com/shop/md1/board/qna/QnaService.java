package com.shop.md1.board.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.shop.md1.board.BoardService;
import com.shop.md1.board.BoardVO;
import com.shop.md1.board.file.BoardFileVO;
import com.shop.md1.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class QnaService implements BoardService {
	
	@Autowired
	private QnaMapper qnaMapper;
	
	public int setRefUpdate(BoardVO boardVO) throws Exception {
		int result = qnaMapper.setRefUpdate(boardVO);
		
		return result;
	}
	
	
	public int setReply(BoardVO boardVO) throws Exception {
		int result = qnaMapper.setReply(boardVO);
		
		return result;
	}
	
	@Override
	public int setDelete(BoardVO boardVO) throws Exception {
		int result = qnaMapper.setDelete(boardVO);
		
		return result;
	}
	
	@Override
	public int setUpdate(BoardVO boardVO) throws Exception {
		int result = qnaMapper.setUpdate(boardVO);
		return result;
	}
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		pager.makeRow();
		
		long totalCount = qnaMapper.getCount(pager);
		pager.makePage(totalCount);
		
		return qnaMapper.getList(pager);
	}
	
	@Override
	public int setInsert(BoardVO boardVO, MultipartFile [] files) throws Exception {
		int result = qnaMapper.setInsert(boardVO);
		
		return result;
	}
	
	@Override
	public BoardVO getOne(BoardVO boardVO) throws Exception {

		return qnaMapper.getOne(boardVO);
	}

	@Override
	public BoardFileVO getFile(BoardFileVO boardFileVO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
