package com.jh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {

	
	@RequestMapping("/project_list")
	public String projectlist() {
		
		return "project_list";
	}
	
	@RequestMapping("/project")
	public String project() {
		
		return "project";
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
