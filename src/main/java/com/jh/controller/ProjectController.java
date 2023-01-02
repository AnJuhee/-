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
	@RequestMapping("/report_list")
	public String report_list() {
		
		return "report_list";
	}

}
