package kz.iitu.SuperEyesApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kz.iitu.SuperEyesApp.model.Question;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {

}
