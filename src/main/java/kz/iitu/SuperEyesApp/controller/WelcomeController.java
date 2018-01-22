package kz.iitu.SuperEyesApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kz.iitu.SuperEyesApp.model.News;
import kz.iitu.SuperEyesApp.repository.NewsRepository;

@Controller
public class WelcomeController {
	
	@Autowired
	private NewsRepository newsRepo;
	
	@GetMapping("/")
	public String index(Model model) {
		List<News>news = newsRepo.findAll();
		model.addAttribute("newsList", news);
		
		return "index";
	}
	
	@GetMapping("/error")
	public String showError() {
		return "error";
	}
}
