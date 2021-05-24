<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Students Information</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Student Information</h1>
        <form action="./StudentServlet" method="POST">
            <table border="1">
            <tr>
                <th>Student ID</th>
                <th><input type="text" name="studentId" value="${student.studentId}"></th>
            </tr>
            
            <tr>
                <th>First Name</th>
                <th><input type="text" name="firstname" value="${student.firstname}"></th>
            </tr>
            
            <tr>
                <th>Last Name</th>
                <th><input type="text" name="lastname" value="${student.lastname}"></th>
            </tr>
            
            <tr>
                <th>Age</th>
                <th><input type="text" name="year" value="${student.year}"></th>
            </tr>
            
            <tr>
                <th colspan="2">
                    <input type="submit" name="action" value="Add">
                    <input type="submit" name="action" value="Edit">
                    <input type="submit" name="action" value="Delete">
                    <input type="submit" name="action" value="Search">
                </th>
            </tr>

        </table>
        </form>
           
       
            <br>
            
            <table border="1">
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Age</th>
                <c:forEach items="${allStudent}" var="stud">
                 
                    <tr>
                        
                        <td>${stud.studentId}</td>
                        <td>${stud.firstname}</td>
                        <td>${stud.lastname}</td>
                        <td>${stud.year}</td>
                    </tr>
                </c:forEach>
            </table>

    </body>
</html>
