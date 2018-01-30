package kz.iitu.SuperEyesApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kz.iitu.SuperEyesApp.model.News;

@Repository
public interface NewsRepository extends JpaRepository<News, Integer> {

}
