package com.jh.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jh.dao.IDao;
import com.jh.dto.Criteria;
import com.jh.dto.InventoryDto;
import com.jh.dto.MemberDto;
import com.jh.dto.PageMakerDto;
import com.jh.dto.ProjectDto;
import com.jh.dto.ReportDto;      


@Controller
public class ProjectController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/")
	public String home() {
		
		return "login";
	}
	
	@RequestMapping("/loginOk")
	public String loginOk(HttpServletRequest request, HttpSession session, Model model) {
		
		String rgroup = request.getParameter("rgroup");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");

		
		IDao dao = sqlSession.getMapper(IDao.class);
		MemberDto ldto = dao.loginInfo(email);
		int checkIdFlag = dao.checkUserIdAndPw(email, pw); //mid,mpw 둘 다 있으면 1(로그인), 하나라도 없으면 0(로그인 x)
		
		if(checkIdFlag == 1) { //참이면 로그인 성공
			session.setAttribute("email", email);
			session.setAttribute("rgroup", rgroup);
			session.setAttribute("name", name);
		}
		
		
		model.addAttribute("ldto", ldto);
		return "redirect:dashboard";
	}
	
	@RequestMapping("/join1")
	public String join1() {
		
		return "join1";
	}
	
	@RequestMapping("/joinOk1")
	public String joinOk1(HttpServletRequest request) {
		
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.MemberJoin(email, name, pw);
		
		return "dashboard";
	}
	
	@RequestMapping("/join2")
	public String join2() {
		
		return "join2";
	}
	
	@RequestMapping("/joinOk2")
	public String joinOk2(HttpServletRequest request) {
		
		return "redirect:join3";
	}
	
	@RequestMapping("/join3")
	public String join3() {
		
		return "join3";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard() {
		
		return "dashboard";
	}
	
	@RequestMapping("aside")
	public String aside() {
		
		return "aside";
	}
	@RequestMapping("/project_list")
	public String projectlist(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<ProjectDto> pdto =  dao.projectlist();
		int pCount = dao.projectAllCount();
		
		model.addAttribute("pdto", pdto);
		model.addAttribute("pCount",pCount);
		
		return "project_list";
	}
	
	@RequestMapping("/project")
	public String project() {
		
		return "project";
	}
	
	@RequestMapping("/projectOK")
	public String projectOk(HttpServletRequest request) {
		
		String project = request.getParameter("project");
		String startdate = request.getParameter("startdate");
		String finishdate = request.getParameter("finishdate");
		String team = request.getParameter("team");
		String leader = request.getParameter("leader");
		String researcher = request.getParameter("researcher");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeProject(project, startdate, finishdate, team, leader, researcher);
		
		return "redirect:project_list";
	}
	
	@RequestMapping("/projectSearch")
	public String projectSearch(HttpServletRequest request, Model model) {
		
		String searchOption = request.getParameter("searchOption");
		
		String searchKey = request.getParameter("searchKey");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<ProjectDto> pdto = null;
		
		if(searchOption.equals("title")) {
			pdto = dao.pSearchTitle(searchKey);			
		} else if(searchOption.equals("contents")) {
			pdto = dao.pSearchLeader(searchKey);
		}	
		
		
		model.addAttribute("pdto", pdto);
		model.addAttribute("pCount", pdto.size());//검색 결과 게시물의 개수 반환
		
		return "project_list";
	}
	
	@RequestMapping("report")
	public String report() {
		
		return "report";
	}
	
	@RequestMapping("reportOk")
	public String reportOk(HttpServletRequest request) {
		
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String writer = request.getParameter("writer");
		String rdate = request.getParameter("rdate");
		String leadercheck = request.getParameter("leadercheck");
		String rsign = request.getParameter("rsign");
		String cdate = request.getParameter("cdate");
		String csign = request.getParameter("csign");
		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeReport(title, contents, writer, rdate, rsign, leadercheck, cdate, csign);
		
		return "redirect:report_list";
	} 
	
	
	@RequestMapping("/report_list")
	public String report_list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<ReportDto> rdto= dao.reportlist();
		int rCount = dao.reportAllCount();
		
		model.addAttribute("rCount", rCount);
		model.addAttribute("rdto", rdto);
		
		return "report_list";
	}

	@RequestMapping("/reportView")
	public String reportView(HttpServletRequest request, Model model, HttpSession session) {
		
		String rnum = request.getParameter("rnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ReportDto rdto = dao.reportView(rnum);
		
		model.addAttribute("rdto", rdto);
		
		return "reportView";
	}
	
	@RequestMapping("/reportModify")
	public String reportModify(HttpServletRequest request, Model model) {
		
		String rnum = request.getParameter("rnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ReportDto rdto = dao.reportView(rnum);
		
		model.addAttribute("rdto", rdto);
		
		return "report_modify";
	}
	
	@RequestMapping("/reportModifyOk")
	public String reportModifyOk(HttpServletRequest request) {
		
		String rnum = request.getParameter("rnum");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String writer = request.getParameter("writer");
		String rdate = request.getParameter("rdate");
		String leadercheck = request.getParameter("leadercheck");
		String rsign = request.getParameter("rsign");
		String cdate = request.getParameter("cdate");
		String csign = request.getParameter("csign");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.reportModify(rnum, title, contents, writer, rdate, rsign, leadercheck, cdate, csign);
		
		return "redirect:report_list";
	}
	
	
	@RequestMapping("/reportDelete")
	public String reportDelete(HttpServletRequest request) {
		
		String rnum = request.getParameter("rnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.reportDelete(rnum);
		
		return "redirect:report_list";
	}
	@RequestMapping("/reportSearch")
	public String reportSearch(HttpServletRequest request, Model model) {
		
		String searchOption = request.getParameter("searchOption");
		//title, content, writer 3개중에 한개의 값을 저장
		String searchKey = request.getParameter("searchKey");
		//유저가 입력한 제목/내용/글쓴이 에 포함된 검색 키워드 낱말
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<ReportDto> rdto = null;
		
		if(searchOption.equals("title")) {
			rdto = dao.rSearchTitle(searchKey);			
		} else if(searchOption.equals("contents")) {
			rdto = dao.rSearchContents(searchKey);
		} else if(searchOption.equals("writer")) {
			rdto = dao.rSearchWriter(searchKey);
		} 	
		
		
		model.addAttribute("rdto", rdto);
		model.addAttribute("rCount", rdto.size());//검색 결과 게시물의 개수 반환
		
		return "report_list";
	}
	
	@RequestMapping("/goods_list")
	public String goods_list(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<InventoryDto> idto= dao.inventorylist();
		
		model.addAttribute("idto", idto);
		
	
		return "goods_list";
	}
	
	@RequestMapping("inventoryOk")
	public String inventoryOk(HttpServletRequest request) {
		
		String iname = request.getParameter("iname");
		String category = request.getParameter("category");
		String brand = request.getParameter("brand");
		String pronum = request.getParameter("pronum");
		String mananum = request.getParameter("mananum");
		String casNo = request.getParameter("casNo");
		String volume = request.getParameter("volume");
		String molecular = request.getParameter("molecular");
		String exdate = request.getParameter("exdate");
		String location = request.getParameter("location");
		String stock = request.getParameter("stock");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeInventory(iname, category, brand, pronum, mananum, casNo, volume, molecular, exdate, location, stock);
		
		return "redirect:goods_list";
	}
	
	@RequestMapping("/inventorySearch")
	public String inventorySearch(HttpServletRequest request, Model model) {
		
		String searchOption = request.getParameter("searchOption");
		//title, content, writer 3개중에 한개의 값을 저장
		String searchKey = request.getParameter("searchKey");
		
		System.out.println(searchKey);
		//유저가 입력한 제목/내용/글쓴이 에 포함된 검색 키워드 낱말
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<InventoryDto> idto = null;
		
		if(searchOption.equals("iname")) {
			idto = dao.iSearchName(searchKey);	
			
			System.out.println(idto.get(0).getInum());
		} else if(searchOption.equals("category")) {
			idto = dao.iSearchCategory(searchKey);
		} else if(searchOption.equals("brand")) {
			idto = dao.iSearchBrand(searchKey);
		} else if(searchOption.equals("casNo")) {
			idto = dao.iSearchCasNo(searchKey);
		} else if(searchOption.equals("pronum")) {
			idto = dao.iSearchProNum(searchKey);
		} else if(searchOption.equals("mananum")) {
			idto = dao.iSearchMananum(searchKey);
		} else if(searchOption.equals("location")) {
			idto = dao.iSearchLocation(searchKey);
		} 		
		
		model.addAttribute("idto", idto);
		
		
		return "goods_list";
	}
}
