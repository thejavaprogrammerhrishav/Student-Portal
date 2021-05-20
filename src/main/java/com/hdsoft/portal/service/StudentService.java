package com.hdsoft.portal.service;

import com.hdsoft.portal.dao.StudentDao;
import com.hdsoft.portal.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

public class StudentService {

    @Autowired
    private StudentDao dao;

    public long save(Student student) {
        try {
            return dao.save(student);
        } catch (Exception e) {

        }
        return -1;
    }

    public List<Student> findAll() {
        try {
            return dao.findAll();
        } catch (Exception e) {

        }
        return new ArrayList<>();
    }

    public List<Student> findByName(String name) {
        try {
            return dao.findByName(name);
        } catch (Exception e) {

        }
        return new ArrayList<>();
    }

    @Transactional
    protected boolean del(long id) {
        Student s = dao.findById(id);
        return dao.delete(s);
    }

    public boolean delete(long id){
        try{
            return del(id);
        }catch (Exception e){

        }
        return false;
    }
}
