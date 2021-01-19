package com.shop.md1.board.review;

import java.sql.Date;
import java.util.List;

import com.shop.md1.board.BoardVO;
import com.shop.md1.board.file.BoardFileVO;

import lombok.Data;

@Data
public class ReviewVO extends BoardVO {

	private Date regDate;
	private long ref;
	private long step;
	private long depth;
	
	private List<BoardFileVO> files;
	
}
