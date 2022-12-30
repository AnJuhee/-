package com.jh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jh.dao.IDao;
import com.jh.dto.MemberDto;

@Controller
public class MemberController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/")
	public String home() {
		
		return "login";
	}
	
	@RequestMapping("/join1")
	public String join1() {
		
		return "join1";
	}
	
	@RequestMapping("/joinOk1")
	public String joinOk1(HttpServletRequest request, HttpSession session,Model model ) {
		
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.MemberJoin(email, name, pw);
		
		session.setAttribute("email", email);
		MemberDto memberdto = dao.MemberEmail(email);
		
		model.addAttribute("mdto", memberdto);
		model.addAttribute("email", email);
		
		return "redirect:join2";
	}
	
	@RequestMapping("/join2")
	public String join2(HttpSession session, Model model) {
		
		String email = (String) session.getAttribute("email");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		MemberDto memberDto = dao.MemberEmail(email);
		
		model.addAttribute("mdto", memberDto);
		
		return "join2";
	}
	
	@RequestMapping("/joinOk2")
	public String joinOk2(HttpServletRequest request) {
		
		String rgroup = request.getParameter("rgroup");
		String email = request.getParameter("email");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.MemberJoin2(rgroup,email);
		
		
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

}
