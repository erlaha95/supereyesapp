package kz.iitu.SuperEyesApp.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(name="answers")
public class Answer {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="answer_text")
	private String answerText;
	
	@Column(name="is_correct")
	private boolean isCorrect;
	
	@ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	@JoinColumn(name="question_id")
	private Question question;

	public Answer() {
	}

	public Answer(String answerText, boolean isCorrect) {
		super();
		this.answerText = answerText;
		this.isCorrect = isCorrect;
	}

	public Integer getId() {
		return id;
	}
	
	@JsonProperty("text")
	public String getAnswerText() {
		return answerText;
	}

	public void setAnswerText(String answerText) {
		this.answerText = answerText;
	}

	public boolean isCorrect() {
		return isCorrect;
	}

	public void setCorrect(boolean isCorrect) {
		this.isCorrect = isCorrect;
	}
	
	@JsonIgnore
	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	@Override
	public String toString() {
		return "Answer [id=" + id + ", answerText=" + answerText + ", isCorrect=" + isCorrect + ", question=" + question
				+ "]";
	}
	
}
