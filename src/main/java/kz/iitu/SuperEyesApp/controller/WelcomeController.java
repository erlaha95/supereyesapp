package kz.iitu.SuperEyesApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class WelcomeController {
	
	@ModelAttribute("module")
	String module() {
		return "home";
	}
	
	@GetMapping
	public String index(Model model) {
		model.addAttribute("message", "Hello User");
		return "index";
	}
	
	@GetMapping("/error")
	public String showError() {
		return "error";
	}
}
