package com.jh.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReportDto {

	private String title;
	private int projectid;
	private String writer;
	private Timestamp rdate;
	private String contents;
	private String leadercheck;
	
}
