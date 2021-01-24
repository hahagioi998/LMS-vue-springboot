package com.tkb.lms.controller.admin.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tkb.lms.model.Header;
import com.tkb.lms.repository.HeaderRepository;
import com.tkb.lms.repository.Left_MenuRepository;

@RestController
@RequestMapping(value="/admin/api")
public class ApiAdmin_IndexController {
	
	@Autowired
	Left_MenuRepository left_menuRepository;
	
	@PostMapping("/header/get")
	public List<Header> getHeader(){
		
		List<Header> result=left_menuRepository.
		return null;
		
	}

}
