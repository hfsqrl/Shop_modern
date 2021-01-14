package com.shop.md1.board.qna;

import java.sql.Date;
import java.util.List;

import com.shop.md1.board.BoardVO;
import com.shop.md1.board.file.BoardFileVO;

import lombok.Data;

@Data
public class QnaVO extends BoardVO {
	
	private Date regDate;
	private long ref;
	private long step;
	private long depth;
	private long item_num;
	
//	private List<BoardFileVO> files;

}
