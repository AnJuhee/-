package com.jh.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jh.dao.IDao;
import com.jh.dto.MemberDto;
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
	public String loginOk(HttpServletRequest request, HttpSession session) {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		int checkIdFlag = dao.checkUserIdAndPw(email, pw); //mid,mpw 둘 다 있으면 1(로그인), 하나라도 없으면 0(로그인 x)
		
		if(checkIdFlag == 1) { //참이면 로그인 성공
			session.setAttribute("email", email);
		}
		
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
		
		String rname = request.getParameter("rname");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.ResearchJoin(rname);
		
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
		model.addAttribute("pdto", pdto);
		
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
}
