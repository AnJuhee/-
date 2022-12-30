package com.jh.dao;

import com.jh.dto.MemberDto;

public interface IDao {
//로그인&회원가입
	public void MemberJoin(String email, String name, String pw); //회원가입
	public MemberDto MemberEmail(String email); //email가져와서 회원가입
	public void MemberJoin2(String rgroup, String email); //가져온 email로 연구실가입
	
	
//연구노트
	public void writeReport(String title,String projectid, String writer, String contents, String leadercheck);
	
}
