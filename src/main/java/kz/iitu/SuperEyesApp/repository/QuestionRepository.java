package kz.iitu.SuperEyesApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kz.iitu.SuperEyesApp.model.Question;

public interface QuestionRepository extends JpaRepository<Question, Long> {

}
