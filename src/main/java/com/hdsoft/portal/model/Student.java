package com.hdsoft.portal.model;

public class Student {
    private long id;
    private String name;
    private String email;
    private String address;
    private String gender;
    private String myclass;

    public Student() {
    }

    public Student(long id, String name, String email, String address, String gender, String myclass) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;
        this.gender = gender;
        this.myclass = myclass;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMyclass() {
        return myclass;
    }

    public void setMyclass(String myclass) {
        this.myclass = myclass;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", gender='" + gender + '\'' +
                ", myclass='" + myclass + '\'' +
                '}';
    }
}
