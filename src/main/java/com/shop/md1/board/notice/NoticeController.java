package com.shop.md1.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shop.md1.board.BoardVO;
import com.shop.md1.util.Pager;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("noticeList")
	public ModelAndView getList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("notice list");
		
		List<BoardVO> ar = noticeService.getList(pager);
		
		mv.addObject("pager", pager);
		mv.addObject("list", ar);
		mv.addObject("board", "notice");
		
		mv.setViewName("notice/noticeList");
		return mv;
	}
	
	@GetMapping("noticeWrite")
	public ModelAndView setInsert(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("notice write");
		mv.setViewName("notice/noticeWrite");
		return mv;
	}
	
//	public ModelAndView setInsert()
	
	@GetMapping("noticeSelect")
	public ModelAndView getOne(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		boardVO = noticeService.getOne(boardVO);
		
		System.out.println("notice select");
		
		mv.addObject("vo", boardVO);
		mv.setViewName("board/boardSelect");
		
		return mv;
	}

}
