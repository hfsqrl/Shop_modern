package com.shop.md1.board;

import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
public class BoardVO {
	
	private long board_num;
	@NotEmpty
	private String board_title;
	@NotEmpty
	private String board_writer;
	private String contents;

}
