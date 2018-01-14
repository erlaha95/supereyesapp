package kz.iitu.SuperEyesApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kz.iitu.SuperEyesApp.model.Exercise;

public interface ExerciseRepository extends JpaRepository<Exercise, Integer> {

}
