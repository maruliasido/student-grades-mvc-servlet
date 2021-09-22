package com.iconplus.model;

import java.util.List;

public class Student {

    private int id;
    private String fullName;
    private String status;
    private String address;
    private String phone;
    private List<Grade> grades;
    private List<Excul> excul;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public List<Grade> getGrades() {
        return grades;
    }

    public void setGrades(List<Grade> grades) {
        this.grades = grades;
    }

    public List<Excul> getExcul() {
        return excul;
    }

    public void setExcul(List<Excul> excul) {
        this.excul = excul;
    }
    
    


    
    
}
