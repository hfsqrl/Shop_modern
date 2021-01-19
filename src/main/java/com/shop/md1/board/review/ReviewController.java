package com.shop.md1.board.review;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.shop.md1.board.BoardVO;
import com.shop.md1.board.file.BoardFileVO;
import com.shop.md1.util.Pager;

@Controller
@RequestMapping("/review/**")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@ModelAttribute(name = "board")
	public String getBoard() {
		return "review";
	}
	
	@Value("${board.review.filePath}")
	private String filePath;
	
	
	@GetMapping("reviewFileDown")
	public ModelAndView getReviewFileDown(BoardFileVO boardFileVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		boardFileVO = reviewService.getFile(boardFileVO);
		
		mv.addObject("fileVO", boardFileVO);
		mv.addObject("filePath", filePath);
		mv.setViewName("fileDown");
		
		return mv;
	}
	
	@PostMapping("summernote")
	public ModelAndView summernote(MultipartFile file)throws Exception{
		ModelAndView mv = new ModelAndView();

		String fileName = reviewService.summernote(file);
		System.out.println("UUID경로명----------"+fileName);
		
		String name = File.separator+"upload"+File.separator+"review"+File.separator+fileName;
		
		System.out.println(name);
		
		mv.addObject("msg", name);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@PostMapping("summernoteDelete")
	public ModelAndView summernoteDelete(String file, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		boolean result = reviewService.summernoteDelete(file, session);
		
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@PostMapping("reviewReply")
	public ModelAndView setReply(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = reviewService.setReply(boardVO);

		String message = "다시 답글을 수정 해주세요.";
				
		if(result>0) {
			message = "답글 수정 완료";
		}

		System.out.println("result : "+result);
		System.out.println("review reply");
		
		mv.addObject("msg", message);
		mv.addObject("path", "./reviewReply");
		mv.addObject("vo", boardVO);
		
		mv.setViewName("common/result");
		mv.setViewName("redirect:../review/reviewList");
		
		return mv;
	}
	
	@GetMapping("reviewReply")
	public ModelAndView setReply(BoardVO boardVO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		boardVO = reviewService.getOne(boardVO);
		
		mv.addObject("vo", boardVO);
		mv.setViewName("board/boardReply");
		
		return mv;
	}
	
	@PostMapping("reviewDelete")
	public ModelAndView setDelete(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = reviewService.setDelete(boardVO);
		
		String message = "삭제 실패.";
		
		if(result>0) {
			message = "삭제 완료.";
			
			mv.addObject("msg", message);
			mv.addObject("path", "./reviewList");
			
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	
	@PostMapping("reviewModify")
	public ModelAndView setUpdate(BoardVO boardVO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = reviewService.setUpdate(boardVO);
		
		String message = "다시 수정 해주세요.";
		
		if(result>0) {
			message = "수정 완료";
		}
		
		System.out.println("result : "+result);
		System.out.println("review modify");
		
		mv.addObject("vo", boardVO);
		mv.addObject("path", "./reviewModify");
		mv.addObject("msg", message);
		
		mv.setViewName("common/result");
		mv.setViewName("redirect:../review/reviewList");
		
		return mv;
	}
	
	@GetMapping("reviewModify")
	public ModelAndView setUpdate(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		boardVO = reviewService.getOne(boardVO);
		
		mv.setViewName("board/boardModify");
		mv.addObject("vo", boardVO);
		
		return mv;
	}
	
	@PostMapping("reviewWrite")
	public ModelAndView setInsert(BoardVO boardVO, MultipartFile [] files) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = reviewService.setInsert(boardVO, files);
		result = reviewService.setRefUpdate(boardVO);
		
		System.out.println("result : "+result);
		System.out.println("review write page");
		
		String message = "리뷰 등록에 실패하였습니다.";
		
		if(result > 0) {
			message = "리뷰 등록 성공";
		}
		
		mv.addObject("msg", message);
		mv.addObject("path", "./reviewWrite");
		mv.addObject("vo", boardVO);
		
		mv.setViewName("common/result");
		mv.setViewName("redirect:../review/reviewList");
		
		return mv;
	}
	
	@GetMapping("reviewWrite")
	public ModelAndView setInsert(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		System.out.println("review write");
		mv.setViewName("board/boardWrite");
		
		return mv;
	}
	
	@GetMapping("reviewList")
	public ModelAndView getList(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("review list");
		
		List<BoardVO> ar = reviewService.getList(pager);
		
		mv.addObject("pager", pager);
		mv.addObject("list", ar);
		
		mv.setViewName("review/reviewList");
		
		return mv;
	}
	
	@GetMapping("reviewSelect")
	public ModelAndView getOne(BoardVO boardVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("review select");
		
		boardVO = reviewService.getOne(boardVO);
		
		mv.addObject("vo", boardVO);
		mv.setViewName("board/boardSelect");
		
		return mv;
	}
	
}
