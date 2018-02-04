package yncrea.pw04.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import yncrea.pw04.entity.Course;

public interface CourseDAO extends JpaRepository<Course,Long> {

}
