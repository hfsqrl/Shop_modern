package com.shop.md1.board.notice;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.shop.md1.board.BoardService;
import com.shop.md1.board.BoardVO;
import com.shop.md1.board.file.BoardFileVO;
import com.shop.md1.util.FileManager;
import com.shop.md1.util.FilePathGenerator;
import com.shop.md1.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class NoticeService implements BoardService {
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	@Autowired
	private FilePathGenerator filePathGenerator;
	
	@Autowired
	private FileManager fileManager;
	
	@Value("${board.notice.filePath}")
	private String filePath;
	
	
	public String summernote(MultipartFile file)throws Exception {
		
		File files = filePathGenerator.getUseResourceLoader(this.filePath);
		
		System.out.println("uuid전경로명-------"+files);
		
		String fileName = fileManager.saveFileCopy(file, files);
		
		return fileName;
	}
	
	public boolean summernoteDelete(String file, HttpSession session)throws Exception {
		String path = session.getServletContext().getRealPath("/upload/notice");
		
		File file2 = new File(path, file);
		
		boolean result = false;
		
		if(file2.exists()) {
			result=file2.delete();
		}
		
		return result;
	}	
	
	@Override
	public List<BoardVO> getList(Pager pager) throws Exception {
		pager.makeRow();
		
		long totalCount = noticeMapper.getCount(pager);
		pager.makePage(totalCount);
		
		return noticeMapper.getList(pager);
	}
	
	@Override
	public int setInsert(BoardVO boardVO, MultipartFile [] files) throws Exception {
		
		int result = noticeMapper.setInsert(boardVO);
		System.out.println("num : "+boardVO.getBoard_num());
		
		File file = filePathGenerator.getUseResourceLoader(this.filePath);
		
		for(MultipartFile multipartFile: files) {
			
			if(multipartFile.getSize()==0) {
				continue;
			}
			
			String fileName = fileManager.saveFileCopy(multipartFile, file); 
			
			BoardFileVO boardFileVO = new BoardFileVO();
			
			boardFileVO.setBoard_num(boardVO.getBoard_num());
			boardFileVO.setOriName(multipartFile.getOriginalFilename());
			boardFileVO.setFileName(fileName);
			
			noticeMapper.setInsertFile(boardFileVO);
			
			System.out.println(fileName);
			
		}		
		
		return result;
	}
	
	@Override
	public BoardVO getOne(BoardVO boardVO) throws Exception {
		
		return noticeMapper.getOne(boardVO);
	}

	@Override
	public int setUpdate(BoardVO boardVO) throws Exception {
		int result = noticeMapper.setUpdate(boardVO);
		return result;
	}
	
	@Override
	public int setDelete(BoardVO boardVO) throws Exception {
		int result = noticeMapper.setDelete(boardVO);
		
		return result;
	}

	@Override
	public BoardFileVO getFile(BoardFileVO boardFileVO) throws Exception {
		
		return noticeMapper.getFile(boardFileVO);
	}

}
