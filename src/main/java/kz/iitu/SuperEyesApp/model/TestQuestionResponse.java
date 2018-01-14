//package kz.iitu.SuperEyesApp.model;
//
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.IdClass;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//
//@Entity
//@IdClass(TestQuestionResponse.class)
//public class TestQuestionResponse {
//	
//	@Id
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
//	private Integer id;
//	
//	@Id
//	@ManyToOne
//	@JoinColumn(name="test_id")
//	private Test test;
//	
//	@Id
//	@ManyToOne
//	@JoinColumn(name="question_id")
//	private Question question;
//	
//	@Id
//	@ManyToOne
//	@JoinColumn(name="answer_id")
//	private Answer selectedAnswer;
//	
//}
