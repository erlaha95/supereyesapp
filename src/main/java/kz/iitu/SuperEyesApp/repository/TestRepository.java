package kz.iitu.SuperEyesApp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import kz.iitu.SuperEyesApp.model.Test;

@Repository
public interface TestRepository extends JpaRepository<Test, Long>{
	@Query("from Test t where t.active = 1")
	public List<Test> findAllEnabled();
}
