package com.jh.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LmoDto {

	private String casno;
	private String name;
	private String pronum;
	private String lmo;
	private int step;
}
