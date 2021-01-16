package com.shop.md1.board.review;

import java.sql.Date;

import com.shop.md1.board.BoardVO;

import lombok.Data;

@Data
public class ReviewVO extends BoardVO {

	private Date regDate;
	private long ref;
	private long step;
	private long depth;
	
}
