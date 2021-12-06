package com.wei.omikujiForm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class homeController {

	@GetMapping("/omikuji")
	public String omikuji() {
		return "index.jsp";
	}
	
	
	// POST request message
//	@RequestMapping(value="/omikuji/formSubmit", method=RequestMethod.POST)

	@PostMapping("/omikuji/formSubmit")
	public String formOmikuji(
			@RequestParam(value="numbers") String number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="living") String living,
			@RequestParam(value="niceToSomeone") String niceToSomeone,
			HttpSession session)	{
			
			session.setAttribute("number", number);
			session.setAttribute("city", city);
			session.setAttribute("person", person);
			session.setAttribute("hobby", hobby);
			session.setAttribute("living", living);
			session.setAttribute("niceToSomeone", niceToSomeone);
			
			return "redirect:/omikuji/show";
	}
	

	
	// display the form submitted
	@GetMapping("/omikuji/show")
	public String confirmationOmikuji(
			HttpSession session,
			Model model) {
		if (session.getAttribute("number") == null) {
			return "index.jsp";
		} else {
			
		String number = (String) session.getAttribute("number");
		String city = (String) session.getAttribute("city");
		String person = (String) session.getAttribute("person");
		String hobby = (String) session.getAttribute("hobby");
		String living = (String) session.getAttribute("living");
		String niceToSomeone = (String) session.getAttribute("niceToSomeone");
		
		model.addAttribute("number", number);
		model.addAttribute("city", city);
		model.addAttribute("person", person);
		model.addAttribute("hobby", hobby);
		model.addAttribute("living", living);
		model.addAttribute("niceToSomeone", niceToSomeone);
		
		return "show.jsp";
		}
	}
}
