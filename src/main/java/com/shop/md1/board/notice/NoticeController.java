package com.shop.md1.board.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.shop.md1.board.BoardVO;
import com.shop.md1.util.Pager;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@ModelAttribute(name = "board")
	public String getBoard() {
		return "notice";
	}
	
	@PostMapping("noticeDelete")
	public ModelAndView setDelete(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = noticeService.setDelete(boardVO);
		
		String message = "삭제 실패";
		
		mv.addObject("vo", boardVO);
		
		if(result>0) {
			message = "삭제 완료.";
			mv.addObject("msg",message);
			mv.addObject("path", "./noticeList");
			
			mv.setViewName("common/result");
		}
		
		
//		mv.setViewName("redirect:../notice/noticeList");
		
		return mv;
	}
	
	@GetMapping("noticeModify")
	public ModelAndView setUpdate(BoardVO boardVO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("board/boardModify");
		mv.addObject("vo", boardVO);
		
		return mv;
	}
	
	@PostMapping("noticeModify")
	public ModelAndView setUpdate(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = noticeService.setUpdate(boardVO);
		String message = "다시 수정 해주세요.";
		
		if(result > 0) {
			message = "수정 완료";
		}
		
		mv.addObject("msg", message);
		mv.addObject("path", "./noticeModify");
		mv.addObject("vo", boardVO);
		
		mv.setViewName("common/result");
		mv.setViewName("redirect:../notice/noticeList");
		
		return mv;
	}
	
	@GetMapping("noticeList")
	public ModelAndView getList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("notice list");
		
		List<BoardVO> ar = noticeService.getList(pager);
		
		mv.addObject("pager", pager);
		mv.addObject("list", ar);
//		mv.addObject("board", "notice");
		
		mv.setViewName("notice/noticeList");
		return mv;
	}
	
	@GetMapping("noticeWrite")
	public ModelAndView setInsert(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("notice write");
		mv.setViewName("board/boardWrite");
		return mv;
	}
	
	@PostMapping("noticeWrite")
	public ModelAndView setInsert(BoardVO boardVO, MultipartFile [] files, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = noticeService.setInsert(boardVO, files, session);
		
		System.out.println("Result : "+result);
		String message = "공지사항 등록 실패";
		
		if(result>0) {
			message = "공지사항 등록 완료";
		}
		
		mv.addObject("msg", message);
		mv.addObject("path", "./noticeWrite");
		mv.addObject("vo", boardVO);
		
		mv.setViewName("common/result");
		mv.setViewName("redirect:../notice/noticeList");
		
		return mv;
	}
	
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
