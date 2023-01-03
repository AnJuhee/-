package com.jh.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReportDto {

	private int rnum;
	private String title;
	private int projectid;
	private String writer;
	private String rdate;
	private String contents;
	private String leadercheck;
	private String rsign;
	private String csign;
	private String cdate;
	
	
}
