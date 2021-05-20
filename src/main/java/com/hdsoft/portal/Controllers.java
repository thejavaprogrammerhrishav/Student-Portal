package com.hdsoft.portal;

import com.hdsoft.portal.model.Student;
import com.hdsoft.portal.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class Controllers {

    @Autowired
    private StudentService service;

    @GetMapping(value = {"/", "/home"})
    public String get(HttpSession session) {
        session.setAttribute("currentPage", "homePage");
        return "home";
    }

    @GetMapping("/register")
    public String register(Model model, HttpSession session) {
        session.setAttribute("currentPage", "registerPage");
        model.addAttribute("student", new Student());
        return "register";
    }

    @PostMapping("/registerStudent")
    public String saveStudent(@ModelAttribute("student") Student student, Model model) {
        System.out.println(student.getMyclass());
        long save = service.save(student);
        if (save > 0) {
            model.addAttribute("msg", "Student Registered Successfully");
            model.addAttribute("cssClass", "alert alert-success");
        } else {
            model.addAttribute("msg", "Student Registration Failed");
            model.addAttribute("cssClass", "alert alert-danger");
        }
        return "register";
    }

    @GetMapping("/studentsAll")
    public String getAll(Model model, HttpSession session) {
        session.setAttribute("currentPage", "viewPage");
        List<Student> all = service.findAll();
        model.addAttribute("students", all);
        return "view";
    }

    @GetMapping("/studentsName")
    public String getNames(@ModelAttribute("search") String search, Model model,HttpSession session) {
        session.setAttribute("currentPage", "viewPage");
        List<Student> all = service.findByName(search);
        model.addAttribute("students", all);
        return "view";
    }

    @GetMapping("/del/{id}")
    public String deleteStudent(@PathVariable("id") Long id,Model model, HttpSession session){
        session.setAttribute("currentPage", "viewPage");

        boolean delete = service.delete(id);
        if(delete){
            model.addAttribute("msg", "Student Deleted Successfully");
            model.addAttribute("cssClass", "alert alert-success");
        } else {
            model.addAttribute("msg", "Student Deletion Failed");
            model.addAttribute("cssClass", "alert alert-danger");
        }
        return getAll(model,session);
    }
}
