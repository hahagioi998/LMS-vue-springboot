package com.tkb.lms.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lms/admin")
public class Admin_IndexController {
	
	@GetMapping(value= {"/",""})
	public String index() {
		return "/admin/index";
	}

}
