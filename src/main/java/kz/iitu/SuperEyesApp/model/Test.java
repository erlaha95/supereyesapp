package kz.iitu.SuperEyesApp.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="tests")
public class Test {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="test_description")
	private String testDescription;
	
	@ManyToMany
	@JoinTable(
			name="tests_questions",
			joinColumns=@JoinColumn(name="test_id", referencedColumnName="id"),
			inverseJoinColumns=@JoinColumn(name="question_id")
			)
	private List<Question>questions = new ArrayList<Question>();
	
	private int active;
	
	@Column(name="success_message")
	private String successMessage;
	
	@Column(name="failure_message")
	private String failureMessage;
	
	@Column(name="min_success_percent")
	private int minPercentForSuccess;
	
	public Test() {
	}

	public Test(String name, String testDescription) {
		this.name = name;
		this.testDescription = testDescription;
		this.active = 1;
	}
	
	public void addQuestion(Question question) {
		if (questions == null)
			questions = new ArrayList<Question>();
		questions.add(question);
	}
	
	
	public int getMinPercentForSuccess() {
		return minPercentForSuccess;
	}

	public void setMinPercentForSuccess(int minPercentForSuccess) {
		this.minPercentForSuccess = minPercentForSuccess;
	}

	public String getSuccessMessage() {
		return successMessage;
	}

	public void setSuccessMessage(String successMessage) {
		this.successMessage = successMessage;
	}
	
	public String getFailureMessage() {
		return failureMessage;
	}

	public void setFailureMessage(String failureMessage) {
		this.failureMessage = failureMessage;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTestDescription() {
		return testDescription;
	}

	public void setTestDescription(String testDescription) {
		this.testDescription = testDescription;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public Long getId() {
		return id;
	}

	public List<Question> getQuestions() {
		return questions;
	}

	@Override
	public String toString() {
		return "Test [id=" + id + ", name=" + name + ", testDescription=" + testDescription + ", active=" + active
				+ "]";
	}

}
