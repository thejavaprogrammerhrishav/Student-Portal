<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page language="java" contentType="text/html; ISO-8859-1" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>

    <title>Home Page</title>
    <%@include file="commons/css.jsp" %>
</head>
<body>
<%@include file="commons/navbar.jsp" %>

<div class="container-fluid m-0 p-0">
    <div class="jumbotron px-5 primary-background text-white" style="height: 90vh;">
       <div class="px-5 mx-5">
           <h1 class="display-4">Welcome To Online Student Portal</h1>
           <h3>Please Follow The Steps as Below</h3>
           <h5>Made By: Hrishav Dhawaj Purkayastha</h5>
           <p>A demo web portal</p>
           <div class="my-5">
               <ol>
                   <li class="my-2">You will find two buttons to navigate to different pages <br>First button will take you to the new
                       student registration <br/>Second will take you to the page having list of all students
                   </li>
                   <li class="my-2">If opted for registering new student, please fill up the form with all the details</li>
                   <li class="my-2">If opted for viewing all list of students, it will take you to the list page</li>
               </ol>
           </div>

           <div class="container-fluid text-center">
               <div class="row text-center mt-5">
                   <div class="col-md-6 col-sm-12 text-center">
                       <a href="<c:url value='/register'/>" class="btn btn-outline-light px-5 btn-lg">Register New Student</a>
                   </div>
                   <div class="col-md-6 col-sm-12 text-center">
                       <a href="<c:url value='/studentsAll'/>" class="btn btn-outline-light px-5 btn-lg">View All Students</a>
                   </div>
               </div>
           </div>
       </div>

    </div>

</div>


<%@include file="commons/js.jsp" %>

</body>
</html>
