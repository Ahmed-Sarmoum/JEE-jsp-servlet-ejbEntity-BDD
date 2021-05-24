
package com.sarmoum.dao;

import com.sarmoum.model.Student;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Ahmed SARMOUM
 */
@Local
public interface StudentDaoLocal {

    void addStudent(Student student);

    void editStudent(Student student);

    void deleteStudent(int studentId);

    Student getStudent(int studentId);

    List<Student> getAllStudent();
    
}
