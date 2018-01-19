package kz.iitu.SuperEyesApp.model;

import java.util.ArrayList;
import java.util.List;

public class UserAnswerForm {
	
	private List<Integer> answersList = new ArrayList<>();
	
	public Integer getSuka() {
		return suka;
	}

	public void setSuka(Integer suka) {
		this.suka = suka;
	}

	private Integer suka = 0;

	public List<Integer> getAnswersList() {
		return answersList;
	}

	public void setAnswersList(List<Integer> answersList) {
		this.answersList = answersList;
	}

}
