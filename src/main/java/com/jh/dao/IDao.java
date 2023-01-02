package com.jh.dao;

import java.util.ArrayList;

import com.jh.dto.MemberDto;
import com.jh.dto.ProjectDto;

public interface IDao {
//로그인&회원가입
	public void MemberJoin(String email, String name, String pw); //회원가입
	public void ResearchJoin(String rname); //연구실 이름 추가
	public int checkUserIdAndPw(String email, String pw); //사이드바 위에 이름가져오기
	
//연구노트
	public void writeProject(String projrct, String startdate, String finishdate, String team, String leader, String researcher);
	public ArrayList<ProjectDto> projectlist(); //프로젝트 리스트 보기
	
}
