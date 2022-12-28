package com.jh.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProjectDto {

	private int projectid;
	private String project;
	private Timestamp duration;
	private String team;
	private String leader;
	private String researcher;
}
