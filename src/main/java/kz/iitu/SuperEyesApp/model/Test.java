package kz.iitu.SuperEyesApp.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.MapKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;

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
