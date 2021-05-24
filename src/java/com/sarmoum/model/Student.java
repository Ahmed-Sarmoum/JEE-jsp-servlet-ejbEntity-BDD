
package com.sarmoum.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Ahmed SARMOUM
 */
@Entity
@Table
@NamedQueries(@NamedQuery(name = "Student.getAll",query = "SELECT e FROM Student e"))
public class Student implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private int studentId;
    @Column
    private String firstname;
    @Column
    private String lastname;
    @Column
    private int year;
    @Column
    private String username;
    @Column
    private String email;
    @Column
    private String address;
    

    public int getStudentId() {
        return studentId;
    }

    public Student() {
    }
    

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public Student(int id,String firstname, String lastname, int year, String username, String email, String address) {
        this.studentId = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.year = year;
        this.username = username;
        this.email = email;
        this.address = address;
    }

  
    
    
}
