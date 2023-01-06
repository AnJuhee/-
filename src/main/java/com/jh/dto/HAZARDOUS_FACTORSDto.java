package com.jh.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HAZARDOUS_FACTORSDto {

	private String factor; //카테고리
	private String casNo; 
	private String name_kor;
	private String name_eng;
}
