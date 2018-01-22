package kz.iitu.SuperEyesApp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kz.iitu.SuperEyesApp.model.Answer;
import kz.iitu.SuperEyesApp.model.Test;
import kz.iitu.SuperEyesApp.model.UserAnswerForm;
import kz.iitu.SuperEyesApp.repository.AnswerRepository;
import kz.iitu.SuperEyesApp.repository.TestRepository;

@Controller
@RequestMapping(value="/tests")
public class TestController {
	
	@Autowired
	private TestRepository testRepo;
	
	@Autowired
	private AnswerRepository answerRepo;
	
	@PostMapping("/submit")
	public String submitTest(@ModelAttribute("form") UserAnswerForm form, Model model) {
		
		int correctCount = 0;
		
		for (Integer i : form.getAnswersList()) {
			Answer a = answerRepo.findOne(i);
			if (a.isCorrect())
				correctCount ++;
		}
		int total = form.getAnswersList().size();
		double percent = ((double)correctCount/(double)total) * 100;
		
		String result = String.format("Вы сдали тест. Ваш резултат: %.1f%%", percent);
		
		model.addAttribute("result",result);
		
		return "test_result";
	}
	
	@GetMapping("/{testId}")
	public String editTestForm(@PathVariable("testId") Long testId, Model model) {
		
		Test test = testRepo.getOne(testId);
		UserAnswerForm form  = new UserAnswerForm();
		
		model.addAttribute("test", test);
		model.addAttribute("form", form);
		
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
