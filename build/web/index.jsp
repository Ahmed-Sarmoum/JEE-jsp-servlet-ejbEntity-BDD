<%-- 
    Document   : index
    Created on : May 19, 2021, 1:30:40 AM
    Author     : Ahmed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.83.1">
        <title>Checkout example · Bootstrap v5.0</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">



        <!-- Bootstrap core CSS -->
        <link href="./bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

        <!-- Favicons -->
        <link rel="apple-touch-icon" href="apple-touch-icon.png" sizes="180x180">
        <link rel="manifest" href="manifest.json">
        <meta name="theme-color" content="#7952b3">


        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>


        <!-- Custom styles for this template -->
        <link href="form-validation.css" rel="stylesheet">
    </head>
    <body class="bg-light">

        <div class="container">
            <main>
                <div class="py-2 text-center">
                    <img class="" src="user.jpg" alt="" width="100%" height="200">
                    <h2 class="py-3">Student Information</h2>
                </div>


                <div class="row g-5">
                    <div class="col-8 ">
                        <table class="table table-bordered">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Age</th>
                                <th scope="col">Username</th>
                                <th scope="col">Email</th>
                                <th scope="col">Address</th>
                            </tr>
                            <c:forEach items="${allStudent}" var="stud">
                                <tr>
                                    <td>${stud.studentId}</td>
                                    <td>${stud.firstname}</td>
                                    <td>${stud.lastname}</td>
                                    <td>${stud.year}</td>
                                    <td>${stud.username}</td>
                                    <td>${stud.email}</td>
                                    <td>${stud.address}</td>


                                </tr>
                            </c:forEach>
                        </table>

                    </div>
                    <div class="col-4">
                        <form class="needs-validation" action="./StudentServlet" method="POST" novalidate>
                            <div class="row g-3">
                                <div class="col-3">
                                    <input class="w-80 btn btn-success btn-lg" name="action" value="Add" type="submit">
                                </div>
                                <div class="col-3">
                                    <input class="w-80 btn btn-primary btn-lg" name="action" value="Edit" type="submit">
                                </div>
                                <div class="col-3">
                                    <input class="w-80 btn btn-danger btn-lg" name="action" value="Delete" type="submit">
                                </div>
                                <div class="col-3">
                                    <input class="w-80 btn btn-secondary btn-lg" name="action" value="Search" type="submit">
                                </div>
                                <div class="col-sm-6">
                                    <label for="studentId" class="form-label">ID</label>
                                    <input type="text" class="form-control" name="studentId" 
                                           id="studentId" placeholder="" value="${student.studentId}" required>
                                    <div class="invalid-feedback">
                                        Valid ID is required.
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <label for="firstName" class="form-label">First name</label>
                                    <input type="text" class="form-control" name="firstname" 
                                           id="firstName" placeholder="" value="${student.firstname}" required>
                                    <div class="invalid-feedback">
                                        Valid first name is required.
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <label for="lastName" class="form-label">Last name</label>
                                    <input type="text" name="lastname" class="form-control" 
                                           id="lastName" placeholder="" value="${student.lastname}" required>
                                    <div class="invalid-feedback">
                                        Valid last name is required.
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <label for="age" class="form-label">Age</label>
                                    <input type="text" name="year" class="form-control" 
                                           id="lastName" placeholder="" value="${student.year}" required>
                                    <div class="invalid-feedback">
                                        Valid Age is required.
                                    </div>
                                </div>

                                <div class="col-12">
                                    <label for="username" class="form-label">Username</label>
                                    <div class="input-group has-validation">
                                        <span class="input-group-text">@</span>
                                        <input type="text" class="form-control" value="${student.username}"
                                               name="username" id="username" placeholder="Username" required>
                                        <div class="invalid-feedback">
                                            Your username is required.
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
                                    <input type="email"  name="email" class="form-control" value="${student.email}"
                                           id="email" placeholder="you@example.com">
                                    <div class="invalid-feedback">
                                        Please enter a valid email address for shipping updates.
                                    </div>
                                </div>

                                <div class="col-12">
                                    <label for="address" class="form-label">Address</label>
                                    <input type="text" name="address" class="form-control" value="${student.address}"
                                           id="address" placeholder="1234 Main St" required>
                                    <div class="invalid-feedback">
                                        Please enter your shipping address.
                                    </div>
                                </div>




                            </div>







                        </form>
                    </div>
                </div>
            </main>

            <footer class="my-5 pt-5 text-muted text-center text-small">
                <p class="mb-1">&copy; 2021 SARMOUM Ahmed</p>
            </footer>
        </div>


        <script src="bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

        <script src="form-validation.js"></script>
    </body>
</html>
