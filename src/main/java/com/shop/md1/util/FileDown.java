package com.shop.md1.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import com.shop.md1.board.file.BoardFileVO;

@Component("fileDown")
public class FileDown extends AbstractView {
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String filePath = "classpath:/static/" + (String)model.get("filePath");
		
		
		BoardFileVO boardFileVO = (BoardFileVO)model.get("fileVO");
		filePath = filePath + "/" + boardFileVO.getFileName();
		
		
		File file = resourceLoader.getResource(filePath).getFile();
		
		
		response.setCharacterEncoding("UTF-8");
		
		response.setContentLengthLong(file.length());
		
		String fileName = URLEncoder.encode(boardFileVO.getOriName(), "UTF-8");
		
		response.setHeader("Content-Disposition", "attachment;filename=\""+fileName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		FileInputStream fileInputStream = new FileInputStream(file);
		
		OutputStream outputStream = response.getOutputStream();
		
		FileCopyUtils.copy(fileInputStream, outputStream);
		
		outputStream.close();
		fileInputStream.close();
		
		System.out.println(filePath);
		
		System.out.println("fileDown view");
	}

}
