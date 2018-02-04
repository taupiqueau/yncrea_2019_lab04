package yncrea.pw04.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import yncrea.pw04.entity.Student;

import java.util.List;

public interface StudentDAO extends JpaRepository<Student,Long> {

    List<Student>  findByLastname(String lastname);

    @Query("SELECT DISTINCT s FROM Student s LEFT JOIN FETCH s.courses")
    List<Student> findAllWithCourses();

}
