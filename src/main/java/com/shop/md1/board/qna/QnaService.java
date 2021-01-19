package com.shop.md1.board.qna;

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
public class QnaService implements BoardService {
	
	@Autowired
	private QnaMapper qnaMapper;
	
	@Autowired
	private FilePathGenerator filePathGenerator;
	
	@Autowired
	private FileManager fileManager;
	
	@Value("${board.qna.filePath}")
	private String filePath;
	
	
	public String summernote(MultipartFile file)throws Exception {
		
		File files = filePathGenerator.getUseResourceLoader(this.filePath);
		
		System.out.println("uuid전경로명-------"+files);
		
		String fileName = fileManager.saveFileCopy(file, files);
		
		return fileName;
	}
	
	public boolean summernoteDelete(String file, HttpSession session)throws Exception {
		String path = session.getServletContext().getRealPath("/upload/qna");
		
		File file2 = new File(path, file);
		
		boolean result = false;
		
		if(file2.exists()) {
			result=file2.delete();
		}
		
		return result;
	}
	
	
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
			
			qnaMapper.setInsertFile(boardFileVO);
			
			System.out.println(fileName);
			
		}
		
		return result;
	}
	
	@Override
	public BoardVO getOne(BoardVO boardVO) throws Exception {

		return qnaMapper.getOne(boardVO);
	}

	@Override
	public BoardFileVO getFile(BoardFileVO boardFileVO) throws Exception {
		
		return qnaMapper.getFile(boardFileVO);
	}

}
