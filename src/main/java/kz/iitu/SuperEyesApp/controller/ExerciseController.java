package kz.iitu.SuperEyesApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kz.iitu.SuperEyesApp.model.Exercise;
import kz.iitu.SuperEyesApp.repository.ExerciseRepository;

@Controller
@RequestMapping("/exercises")
public class ExerciseController {
	
	@Autowired
	private ExerciseRepository exerciseRepo;
	
	@GetMapping
	public String showExercises(Model model) {
		
		List<Exercise>exercises =
		exerciseRepo.findAllEnabled();
		
		model.addAttribute("exercises", exercises);
		
		return "exercises";
	}
	

}
