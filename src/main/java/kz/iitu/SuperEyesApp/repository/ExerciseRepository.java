package kz.iitu.SuperEyesApp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import kz.iitu.SuperEyesApp.model.Exercise;

@Repository
public interface ExerciseRepository extends JpaRepository<Exercise, Integer> {
	
	@Query("from Exercise e where e.isActive = 1")
	public List<Exercise> findAllEnabled();
}
