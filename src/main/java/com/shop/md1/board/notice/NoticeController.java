package com.shop.md1.board.notice;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
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
@RequestMapping("/notice/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@Value("${board.notice.filePath}")
	private String filePath;
	
	@ModelAttribute(name = "board")
	public String getBoard() {
		return "notice";
	}
	
	@GetMapping("noticeFileDown")
	public ModelAndView getNoticeFileDown(BoardFileVO boardFileVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		boardFileVO = noticeService.getFile(boardFileVO);
		
		mv.addObject("fileVO", boardFileVO);
		mv.addObject("filePath", filePath);
		mv.setViewName("fileDown");
		
		return mv;
	}
	
	@PostMapping("summernote")
	public ModelAndView summernote(MultipartFile file)throws Exception{
		ModelAndView mv = new ModelAndView();

		String fileName = noticeService.summernote(file);
		System.out.println("UUID경로명----------"+fileName);
		
		String name = File.separator+"upload"+File.separator+"notice"+File.separator+fileName;
		
		System.out.println(name);
		
		mv.addObject("msg", name);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@PostMapping("summernoteDelete")
	public ModelAndView summernoteDelete(String file, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		boolean result = noticeService.summernoteDelete(file, session);
		
		mv.addObject("msg", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
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
		
		return mv;
	}
	
	@GetMapping("noticeModify")
	public ModelAndView setUpdate(BoardVO boardVO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		boardVO = noticeService.getOne(boardVO);
		
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
	public ModelAndView setInsert(BoardVO boardVO, MultipartFile [] files) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = noticeService.setInsert(boardVO, files);
		
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
