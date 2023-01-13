package com.jh.dao;

import java.util.ArrayList;
import java.util.List;

import com.jh.dto.Criteria;
import com.jh.dto.HAZARDOUS_FACTORSDto;
import com.jh.dto.InventoryDto;
import com.jh.dto.MemberDto;
import com.jh.dto.ProjectDto;
import com.jh.dto.ReportDto;


public interface IDao {
//로그인&회원가입
	public void MemberJoin(String email, String name, String pw); //회원가입
	public int checkUserIdAndPw(String email, String pw); //사이드바 위에 이름가져오기
	public MemberDto loginInfo(String email); //로그인한 사람 정보 & 회원정보
	public void rgroup(String email, String rgroup); //이메일로 찾아서 연구실 추가하기
	public void MemberModify(String email, String name, String pw, String rgroup);
	public void MemberDelete(String email); //탈퇴

	
//연구노트(프로젝트)
	public void writeProject(String project, String startdate, String finishdate, String team, String leader, String researcher);//새 프로젝트 작성
	public ArrayList<ProjectDto> projectlist(Criteria cri); //프로젝트 리스트 보기
	public int projectAllCount();//프로젝트 글의 총 개수
	public ProjectDto projectView(String projectid); //선택한 글 보기
	public void projectDelete(String projectid); //보고서 글 삭제
	public void projectModify(String projectid, String project, String startdate, String finishdate, String team, String leader, String researcher);//프로젝트 수정
	public List<ReportDto> report(String projectid); //관련보고서
	
	
//연구노트(보고서)
	public void writeReport(String title, String contents, String writer, String rdate, String rsign, String leadercheck, String cdate, String csign, String projectid);//새 보고서 작성
	public List<ReportDto> reportlist(Criteria cri); //보고서 리스트 보기
	public ReportDto reportView(String rnum); //선택한 글 보기
	public void reportDelete(String rnum); //보고서 글 삭제
	public void reportModify(String rnum, String title, String contents, String writer, String rdate, String rsign, String leadercheck, String cdate, String csign);//보고서 수정
	public int reportAllCount();//보고서 글의 총 개수
	
	public ArrayList<ProjectDto> pSearch(); 
	
//게시판 검색 관련(보고서)
	public ArrayList<ReportDto> rSearchTitle(String searchKey);
	public ArrayList<ReportDto> rSearchContents(String searchKey);
	public ArrayList<ReportDto> rSearchWriter(String searchKey);
	
//게시판 검색 관련(프로젝트)
	public ArrayList<ProjectDto> pSearchTitle(String searchKey);
	public ArrayList<ProjectDto> pSearchLeader(String searchKey);
	
//물품 검색 관련
	public ArrayList<InventoryDto> iSearchName(String searchKey);
	public ArrayList<InventoryDto> iSearchCategory(String searchKey);
	public ArrayList<InventoryDto> iSearchBrand(String searchKey);
	public ArrayList<InventoryDto> iSearchCasNo(String searchKey);
	public ArrayList<InventoryDto> iSearchProNum(String searchKey);
	public ArrayList<InventoryDto> iSearchMananum(String searchKey);
	public ArrayList<InventoryDto> iSearchLocation(String searchKey);
	
	public ArrayList<HAZARDOUS_FACTORSDto> aSearchCasNo(String searchKey);
	public ArrayList<HAZARDOUS_FACTORSDto> aSearchNameK(String searchKey);
	public ArrayList<HAZARDOUS_FACTORSDto> aSearchNameE(String searchKey);
	public ArrayList<HAZARDOUS_FACTORSDto> aSearchCategory(String searchKey);
	
//물품 목록 
	public void writeInventory(String iname, String category, String brand, String pronum, String mananum, String casNo, String volume, String molecular, String exdate, String location, String stock);//새 물품 작성
	public ArrayList<InventoryDto> inventorylist(Criteria cri); //물품 리스트 보기
	public ArrayList<HAZARDOUS_FACTORSDto> apilist(); //api 리스트 보기
	public int inventoryAllCount();//물품 글의 총 개수
	public void inventoryDelete(String inum); // 물품 삭제
	public InventoryDto inventoryView(String inum); //물품 정보가져오기
	public void inventoryModify(String inum, String iname, String category, String brand, String pronum, String mananum,
			String casNo, String volume, String molecular, String exdate, String location, String stock); // 물품 수정
	
//데시보드
	public ArrayList<ProjectDto> latest(); //최신글 3개만 가져오기
	public ArrayList<ProjectDto> latest1(); //최신글 1개만 가져오기
	public int CountChe();//화악인자개수
	public int CountLa();//생물체
	public List<InventoryDto> inventoryInfo(); //인벤토리 정보들 가져오기
	
	
	
	
	
	
}
