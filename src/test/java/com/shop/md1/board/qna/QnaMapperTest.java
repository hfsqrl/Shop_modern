package com.shop.md1.board.qna;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.shop.md1.board.BoardVO;

@SpringBootTest
class QnaMapperTest {
	
	@Autowired
	private QnaMapper qnaMapper;
	
	@Test
	void setReplyTest() throws Exception {
		QnaVO qnaVO = new QnaVO();
		BoardVO boardVO = new BoardVO();
		
		qnaVO.setBoard_title("test reply title 2");
		qnaVO.setBoard_writer("test reply writer 2");
		qnaVO.setBoard_contents("test reply contents 2");
		
		qnaVO.setRef(2);
		qnaVO.setStep(1);
		qnaVO.setDepth(1);
		
		int result = qnaMapper.setReply(qnaVO);
	}

	
	void setInsertTest() throws Exception {
		
		for(int i=0; i<30; i++) {
			
			QnaVO qnaVO = new QnaVO();
			
			qnaVO.setBoard_title("test qna title"+i);
			qnaVO.setBoard_writer("test qna writer"+i);
			qnaVO.setBoard_contents("test qna contents"+i);
			
			int result = qnaMapper.setInsert(qnaVO);
			
		}
		
		System.out.println("insert qna");
		
	}

}
