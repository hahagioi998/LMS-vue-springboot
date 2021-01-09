package com.tkb.lms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lms")
public class IndexController {
	

	@GetMapping("/")
	public String index() {
		return "/index";
	}
	
	@GetMapping("/header")
	public String goheader() {
		return "/loads/header";
	}

}
