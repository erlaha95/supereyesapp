package kz.iitu.SuperEyesApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kz.iitu.SuperEyesApp.model.Test;

@Repository
public interface TestRepository extends JpaRepository<Test, Long>{

}
