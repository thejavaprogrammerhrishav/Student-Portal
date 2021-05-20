package com.hdsoft.portal.dao;

import com.hdsoft.portal.model.Student;

import java.util.List;

public interface StudentDao {
    long save(Student student);
    boolean delete(Student student);


    Student findById(long id);

    List<Student> findAll();

    List<Student> findByName(String name);

}
