<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View All Students</title>
    <%@include file="commons/css.jsp" %>
    <link rel="stylesheet" href="<c:url value='/resources/css/view.css'/> " type="text/css">
</head>
<body>
<%@include file="commons/navbar.jsp" %>

<div class="container-fluid mt-5 px-5">
    <div class="mx-5 px-5">
        <div class="my-4">
            <h2>All Students</h2>
        </div>
        <c:if test="${not empty msg}">
            <div class="<c:out value='${cssClass}'/>">
                <b><c:out value='${msg}'/></b>
            </div>
        </c:if>
        <div class="container-fluid mx-0 px-0">
            <div class="row">
                <div class="col-md-12">
                    <form action="<c:url value='/studentsName'/>" modelAttribute="search">
                        <div class="container-fluid px-0 mx-0">
                            <div class="row my-3">
                                <div class="col-md-10 form-group ">
                                    <input type="text" class="form-control" name="search" id="search"
                                           placeholder="Enter Student Name Here" value="">
                                </div>
                                <div class="col-md-2">
                                    <input type="submit" class="btn btn-outline-success mx-5 px-5" value="Search">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <table class="table mt-3">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Address</th>
                <th scope="col">Gender</th>
                <th scope="col">Class</th>
                <th scope="col" colspan="2">Action</th>
            </tr>
            </thead>
            <tbody>
            <c:choose>
                <c:when test="${empty students}">
                    <tr class="text-center">
                        <td colspan="4">No Students Found</td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <c:forEach var="s" items="${students}">
                        <tr>
                            <th scope="row"><c:out value="${s.id}"/></th>
                            <td><c:out value="${s.name}"/></td>
                            <td><c:out value="${s.email}"/></td>
                            <td><c:out value="${s.address}"/></td>
                            <td><c:out value="${s.gender}"/></td>
                            <td><c:out value="${s.myclass}"/></td>
                            <td colspan="2">
                                <a href="<c:url value='/del/${s.id}'/>" class="btn btn-danger btn-sm px-4">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:otherwise>
            </c:choose>


            </tbody>
        </table>
    </div>
</div>


<%@include file="commons/js.jsp" %>
</body>
</html>
