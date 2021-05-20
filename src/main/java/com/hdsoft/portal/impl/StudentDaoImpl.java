package com.hdsoft.portal.impl;

import com.hdsoft.portal.dao.StudentDao;
import com.hdsoft.portal.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class StudentDaoImpl implements StudentDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }


    @Override
    @Transactional
    public long save(Student student) {
        return (long) hibernateTemplate.save(student);
    }

    @Override
    @Transactional
    public List<Student> findAll() {
        return hibernateTemplate.loadAll(Student.class);
    }

    @Override
    @Transactional
    public List<Student> findByName(String name) {
        return (List<Student>) hibernateTemplate.findByNamedParam("from Student where name like :name", "name", "%" + name + "%");
    }

    @Override
    @Transactional
    public boolean delete(Student student) {
        hibernateTemplate.delete(student);
        return true;
    }

    @Override
    @Transactional
    public Student findById(long id) {
        return hibernateTemplate.get(Student.class,id);
    }
}
