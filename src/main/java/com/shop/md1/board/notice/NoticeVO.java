package com.shop.md1.board.notice;

import java.util.List;

import com.shop.md1.board.BoardVO;
import com.shop.md1.board.file.BoardFileVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class NoticeVO extends BoardVO {
	
	private List<BoardFileVO> files;

}
