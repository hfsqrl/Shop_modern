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
import com.shop.md1.product.ProductVO;
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
	
	@PostMapping("qnaDelete")
	public ModelAndView setDelete(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = qnaService.setDelete(boardVO);
		
		System.out.println("result : "+result);
		
		String message = "삭제 실패";
		
		mv.addObject("vo", boardVO);
		
		if(result>0) {
			message = "삭제 완료.";
			mv.addObject("msg",message);
			mv.addObject("path", "./qnaList");
			
			mv.setViewName("common/result");
		}
		
		System.out.println("qna delete");
		
		
		return mv;
	}
	
	@GetMapping("qnaModify")
	public ModelAndView setUpdate(BoardVO boardVO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		boardVO = qnaService.getOne(boardVO);
		
		mv.setViewName("board/boardModify");
		mv.addObject("vo", boardVO);
		
		return mv;
	}
	
	@PostMapping("qnaModify")
	public ModelAndView setUpdate(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = qnaService.setUpdate(boardVO);
		
		String message = "다시 수정 해주세요.";
				
		if(result>0) {
			message = "수정 완료";
		}
		
		mv.addObject("msg", message);
		mv.addObject("path", "./qnaModify");
		mv.addObject("vo", boardVO);
		
		mv.setViewName("common/result");
		mv.setViewName("redirect:../qna/qnaList");
		
		return mv;
	}
	
	@PostMapping("qnaWrite")
	public ModelAndView setInsert(BoardVO boardVO, MultipartFile [] files, HttpSession session) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setInsert(boardVO, files, session);
		
		System.out.println("Result : "+result);
		String message = "접수가 완료되지 않았습니다.";
		
		if(result>0) {
			message = "문의 접수 완료.";
		}
		
		mv.addObject("msg", message);
		mv.addObject("path", "./qnaWrite");
		mv.addObject("vo", boardVO);
		
		mv.setViewName("common/result");
		mv.setViewName("redirect:../qna/qnaList");
		
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
		
//		mv.addObject("dto", productVO);
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
		
		mv.addObject("vo", boardVO);
		mv.setViewName("board/boardSelect");
		
		return mv;
	}
	
}
