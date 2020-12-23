package com.shop.md1.board.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/notice/**")
public class NoticeController {
	
	@GetMapping("noticeList")
	public ModelAndView getList() throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("notice list");
		mv.setViewName("notice/noticeList");
		return mv;
	}

}
