package com.shop.md1.board.notice;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class NoticeMapperTest {
	
	@Autowired
	private NoticeMapper noticeMapper;

	@Test
	void setInsertTest() throws Exception {
		
		for(int i=1; i<11; i++) {
			NoticeVO noticeVO = new NoticeVO();
			noticeVO.setBoard_title("test title" + i+1);
			noticeVO.setBoard_writer("test modern" + i+1);
			noticeVO.setBoard_contents("test contents" + i+1);
			
			int result = noticeMapper.setInsert(noticeVO);
			
		}
		
		System.out.println("finish insert notice");
		
	}

}
