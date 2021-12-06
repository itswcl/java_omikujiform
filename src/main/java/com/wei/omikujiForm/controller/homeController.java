package com.wei.omikujiForm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class homeController {

	@GetMapping("/omijuji")
	public String omijuji() {
		return "index.jsp";
	}
}
