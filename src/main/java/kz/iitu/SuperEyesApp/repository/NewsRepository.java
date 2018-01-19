package kz.iitu.SuperEyesApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kz.iitu.SuperEyesApp.model.News;

public interface NewsRepository extends JpaRepository<News, Integer> {

}
