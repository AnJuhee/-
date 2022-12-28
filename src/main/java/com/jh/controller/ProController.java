package com.jh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProController {
	
	@RequestMapping("/")
	public String home() {
		
		return "login";
	}
	
	@RequestMapping("/project_list")
	public String projectlist() {
		
		return "project_list";
	}
	
	@RequestMapping("aside")
	public String aside() {
		
		return "aside";
	}
	@RequestMapping("/join")
	public String join() {
		
		return "join1";
	}
	@RequestMapping("/dashboard")
	public String dashboard() {
		
		return "dashboard";
	}
}
