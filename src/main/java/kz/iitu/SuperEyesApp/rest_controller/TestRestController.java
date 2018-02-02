package kz.iitu.SuperEyesApp.rest_controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kz.iitu.SuperEyesApp.model.Test;
import kz.iitu.SuperEyesApp.repository.TestRepository;

@RestController
@RequestMapping("/api/tests")
public class TestRestController {
	
	@Autowired
	private TestRepository testRepo;
	
	@GetMapping
	public ResponseEntity<List<Test>>getAllTests() {
		List<Test>tests = new ArrayList<>();
		tests = testRepo.findAll();
		
		return new ResponseEntity<List<Test>>(tests, HttpStatus.OK);
	}
	
	@GetMapping("/{testId}")
	public ResponseEntity<Test>getTestByID(@PathVariable("testId") Long testId) {
		
		Test test = testRepo.findOne(testId);
		
		return new ResponseEntity<Test>(test, HttpStatus.OK);
		
	}
	
}
