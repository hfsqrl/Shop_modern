package com.shop.md1.board.qna;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class QnaMapperTest {
	
	@Autowired
	private QnaMapper qnaMapper;

	@Test
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
