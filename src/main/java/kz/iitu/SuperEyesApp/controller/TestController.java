package kz.iitu.SuperEyesApp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kz.iitu.SuperEyesApp.model.Answer;
import kz.iitu.SuperEyesApp.model.Exam;
import kz.iitu.SuperEyesApp.model.Test;
import kz.iitu.SuperEyesApp.model.UserAnswerForm;
import kz.iitu.SuperEyesApp.repository.TestRepository;

@Controller
@RequestMapping(value="/tests")
public class TestController {
	
	@Autowired
	private TestRepository testRepo;
	
	@PostMapping("/submit")
	public String submitTest(@ModelAttribute("form") UserAnswerForm form) {
		
		int count = 0;
//		for (Answer a : form.getAnswersList()) {
//			if (a.isCorrect())
//				count++;
//		}
		System.out.println(">> count:  " + count);
		
		return "redirect:/tests";
	}
	
	@GetMapping("/{testId}")
	public String editTestForm(@PathVariable("testId") Long testId, Model model) {
		
		
		Test test = testRepo.getOne(testId);
		UserAnswerForm form  = new UserAnswerForm();
		form.setAnswersList(new ArrayList<>(test.getQuestions().size()));
		//List<Answer>answers = new ArrayList<>(test.getQuestions().size());
		//Exam exam = new Exam(test, new ArrayList<Answer>());
		form.setSuka(0);
		
		model.addAttribute("test", test);
		model.addAttribute("form", form);
		//model.addAttribute("responseAnswers", answers);
		
		return "test_questions";
	}
	
	@PostMapping("/addTest")
	public String createTest(Test test) {
		testRepo.save(test);
		return "redirect:/tests";
	}
	
	@GetMapping
	public String showTests(Model model) {
		model.addAttribute("tests", testRepo.findAll());
		return "test_main";
	}
	
	@GetMapping("/showAddForm")
	public String showAddTestForm(Model model) {
		
		model.addAttribute("test", new Test());
		return "add_test_form";
	}

}
