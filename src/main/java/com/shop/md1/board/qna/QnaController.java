package com.shop.md1.board.qna;

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
@RequestMapping("/qna/**")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@ModelAttribute(name = "board")
	public String getBoard() {
		return "qna";
	}
	
	@PostMapping("qnaWrite")
	public ModelAndView setInsert(BoardVO boardVO, MultipartFile [] files, HttpSession session) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setInsert(boardVO, files, session);
		
		System.out.println("Result : "+result);
		String message = "접수가 완료되지 않았습니다.";
		
		if(result>0) {
			message = "Write Success";
		}
		
		mv.addObject("msg", message);
		mv.addObject("path", "./qnaWrite");
		
		mv.setViewName("common/result");
		
		return mv;
	}
	
	@GetMapping("qnaWrite")
	public ModelAndView setInsert(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		System.out.println("qna write");
		mv.setViewName("board/boardWrite");
		
		return mv;
	}
	
	@GetMapping("qnaList")
	public ModelAndView getList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("qna list");
		
		List<BoardVO> ar = qnaService.getList(pager);
		
		mv.addObject("pager", pager);
		mv.addObject("list", ar);
		
		mv.setViewName("qna/qnaList");
		
		return mv;
	}
	
	@GetMapping("qnaSelect")
	public ModelAndView getOne(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("qna select");
		
		boardVO = qnaService.getOne(boardVO);
		
		if(boardVO != null) {
			mv.addObject("vo", boardVO);
			mv.setViewName("board/boardSelect");
		} else {
			mv.addObject("msg", "no data");
			mv.addObject("path", "./qnaList");
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	
}
