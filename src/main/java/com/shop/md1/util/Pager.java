package com.shop.md1.util;

import lombok.Data;

@Data
public class Pager {
	
	private String kind;
	private String search;
	
	private long curPage;
	private long perPage;
	
	private long startRow;
	
	private long startNum;
	private long lastNum;
	private boolean isBefore;
	private boolean isAfter;
	
	public Pager() {
		this.perPage=10;
	}
	
	public void setCurPage(long curPage) {
		if(curPage==0) {
			this.curPage=1;
		} else {
			this.curPage = curPage;
		}
	}
	
	public long getCurPage() {
		if(this.curPage==0) {
			this.curPage=1;
		}
		
		return this.curPage;
	}
	
	public String getSearch() {
		if(this.search==null) {
			this.search="";
		}
		
		return this.search;
	}
	
	public void makeRow() {
		this.startRow =  (this.getCurPage()-1)*perPage;
	}
	
	public void makePage(long totalCount) {
		// 전체 페이지 수는 전체 글의 갯수에 페이지당 보여줄 글의 수
		long totalPage = totalCount/this.getPerPage();
		// 전체 글의 갯수에 페이지당 보여줄 글의 수를 나눈 나머지가 0이 아니라면
		// 전체 페이지 수는 1증가
		if(totalCount%this.getPerPage() != 0) {
			totalPage++;
		}
		
		// 페이지 10개에 1블럭, 1블럭에 보여줄 페이지 수
		long perBlock = 10;
		// 전체 블럭수는 전체 페이지수에 블럭당 보여줄 페이지 수를 나눈 값
		long totalBlock = totalPage/perBlock;
		// 전체 페이지수에 1블럭에 보여줄 페이지 수를 나눈 나머지 값이 0이 아니라면
		// 전체 블럭수는 1이 증가
		if(totalPage%perBlock != 0) {
			totalBlock++;
		}
		
		// 현재 블럭 번호는 현재 페이지에 블럭당 페이지 수를 나눈 값
		long curBlock = this.getCurPage()/perBlock;
		// 현재 페이지에 1블럭에 보여줄 페이지 수를 나눈 나머지 값이 0이 아니라면 현재 블럭 번호에 +1해서 다음 블럭 반환
		if(this.getCurPage()%perBlock != 0) {
			curBlock++;
		}
		
		// 현재 블럭의 첫번째 번호는 (현재 블럭 번호-1)*1블럭에 보여줄 페이지 수+1
		this.startNum = (curBlock-1)*perBlock+1;
		// 현재 블럭의 마지막 번호는 현재 블럭 번호*1블럭에 보여줄 페이지 수
		this.lastNum = curBlock*perBlock;
		
		// 현재 블럭이 전체 블럭 수와 같다면, 현재 블럭의 마지막 번호는 전체에서 마지막 페이지
		if(curBlock == totalBlock) {
			this.lastNum = totalPage;
		}
		
		// 현재 블럭이 두번째면 이전 버튼 활성화
		if(curBlock > 1) {
			this.isBefore = true;
		}
		
		// 현재 블럭이 전체 블럭 수보다 작다면 다음 버튼 활성화
		if(curBlock < totalBlock) {
			this.isAfter = true;
		}
	}
	
	
	

}
