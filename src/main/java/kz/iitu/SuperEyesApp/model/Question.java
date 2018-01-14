package kz.iitu.SuperEyesApp.model;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.MapKeyJoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="questions")
public class Question {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="question_text")
	private String questionText;
	
	@Column(name="image_path")
	private String imagePath;
	
	@OneToMany(mappedBy="question", cascade = CascadeType.ALL)
	private Set<Answer>answers = new HashSet<Answer>();
	
	@ManyToMany
	@JoinTable(
			name="tests_questions",
			joinColumns=@JoinColumn(name="question_id"),
			inverseJoinColumns=@JoinColumn(name="test_id")
			)
	private List<Test> tests = new ArrayList<Test>();
	
//	@JoinTable(name="question_answer_user",
//			joinColumns = @JoinColumn(name="question_id"),
//			inverseJoinColumns = @JoinColumn(name="user_id"))
//	@MapKeyJoinColumn(name="answer_id")
//	@ElementCollection
//	private Map<Question, Answer> selectedAnswer;
	
	@Column(name="is_active")
	private boolean isActive;
	
	@Transient
	private Integer selectedAnswerId;

	public Question() {
	}

	public Question(String questionText, String imagePath) {
		super();
		this.questionText = questionText;
		this.imagePath = imagePath;
		this.isActive = true;
	}
	
	public void addAnswer(Answer answer) {
		if (answers == null)
			answers = new HashSet<Answer>();
		answers.add(answer);
	}
	
	public Integer getSelectedAnswerId() {
		return selectedAnswerId;
	}

	public void setSelectedAnswerId(Integer selectedAnswerId) {
		this.selectedAnswerId = selectedAnswerId;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setAnswers(Set<Answer> answers) {
		this.answers = answers;
	}

	public void setTests(List<Test> tests) {
		this.tests = tests;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean active) {
		this.isActive = active;
	}

	public String getQuestionText() {
		return questionText;
	}

	public void setQuestionText(String questionText) {
		this.questionText = questionText;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Integer getId() {
		return id;
	}

	public Set<Answer> getAnswers() {
		return answers;
	}

	public List<Test> getTests() {
		return tests;
	}
	
}
