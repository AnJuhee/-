package com.jh.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Criteria {

	private int pageNum; // 현재 페이지 번호.
	private int amount; // 페이지당 게시물수
	private String keyword; // 검색 키워드
	private String type; // 검색 타입
	private String[] typeArr;
	
	public double getPageNum() {
		// TODO Auto-generated method stub
		return 0;
	
	
	}

}
