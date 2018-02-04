package yncrea.pw04.service.impl;

import org.springframework.transaction.annotation.Transactional;
import yncrea.pw04.dao.StudentDAO;
import yncrea.pw04.entity.Student;
import yncrea.pw04.service.StudentService;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

@Named
@Transactional
public class StudentServiceImpl implements StudentService {

    @Inject
    private StudentDAO studentDAO;

    @Override
    public List<Student> findByLastname(final String lastname) {
       return studentDAO.findByLastname(lastname);
    }


    @Override
    public void saveStudent(final Student student) {
        studentDAO.save(student);
    }


    @Override
    public List<Student> findAllWithCourses() {
        return studentDAO.findAllWithCourses();
    }


    @Override
    public List<Student> findAll() {
       return studentDAO.findAll();
    }



}
