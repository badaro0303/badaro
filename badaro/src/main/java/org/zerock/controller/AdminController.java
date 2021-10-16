package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/badaro/admin")
public class AdminController {
	
	@GetMapping("main")
	public void admin() {
		log.info("");
	}
	
	@GetMapping("member_list")
	public void member_list() {
		log.info("");
	}
}
