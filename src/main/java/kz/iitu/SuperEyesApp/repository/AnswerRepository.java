package kz.iitu.SuperEyesApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kz.iitu.SuperEyesApp.model.Answer;

@Repository
public interface AnswerRepository extends JpaRepository<Answer, Integer>{
	
}
