package com.jh.dto;

import com.jh.dto.MemberDto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberDto {

	private String email;
	private String name;
	private String pw;
	private String rgroup;
	private String latest_id;
}
