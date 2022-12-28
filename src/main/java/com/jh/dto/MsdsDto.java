package com.jh.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MsdsDto {

	private String casno;
	private String state;
	private String information;
	private String msds;
	private Timestamp mupdate;
	
}
