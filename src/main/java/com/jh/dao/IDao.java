package com.jh.dao;

import com.jh.dto.MemberDto;

public interface IDao {
//로그인&회원가입
	public void MemberJoin(String email, String name, String pw); //회원가입
	public void ResearchJoin(String rname); //연구실 이름 추가
	public int checkUserIdAndPw(String email, String pw);
	
//연구노트
	public void writeReport(String title,String projectid, String writer, String contents, String leadercheck);
	
	
}
