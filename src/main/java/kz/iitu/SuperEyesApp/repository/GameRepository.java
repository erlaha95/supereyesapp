package kz.iitu.SuperEyesApp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import kz.iitu.SuperEyesApp.model.Game;

@Repository
public interface GameRepository extends JpaRepository<Game, Integer> {

	@Query("from Game g where g.enabled = 1")
	public List<Game> findAllEnabled();
}
