package com.jh.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProjectDto {

	private int projectid;
	private String project;
	private String startdate;
	private String finishdate;
	private String team;
	private String leader;
	private String researcher;
	private String regdate;
	
}
