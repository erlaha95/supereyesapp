package kz.iitu.SuperEyesApp.model;

import java.util.List;

public class Exam {
	
	private Test test;
	private List<Answer>selectedAnswers;
	
	public Exam(Test test, List<Answer> selectedAnswers) {
		super();
		this.test = test;
		this.selectedAnswers = selectedAnswers;
	}
	public Test getTest() {
		return test;
	}
	public void setTest(Test test) {
		this.test = test;
	}
	public List<Answer> getSelectedAnswers() {
		return selectedAnswers;
	}
	public void setSelectedAnswers(List<Answer> selectedAnswers) {
		this.selectedAnswers = selectedAnswers;
	}
}
