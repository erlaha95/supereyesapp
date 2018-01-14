package kz.iitu.SuperEyesApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelcomeController {
	
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
