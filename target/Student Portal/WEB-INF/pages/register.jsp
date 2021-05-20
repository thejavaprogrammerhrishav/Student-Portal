<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Register New Student</title>
    <%@include file="commons/css.jsp" %>
</head>
<body>
<%@include file="commons/navbar.jsp" %>

<div class="container mt-5">
    <form action="<c:url value='/registerStudent'/>" method="post" modelAttribute="student">
        <div class="card">
            <div class="card-header text-center primary-background text-white">
                <div class="my-3">
                    <i class="fa fa-user-plus fa-4x"></i>
                </div>
                <div>
                    <h3>Register New Student</h3>
                </div>
            </div>
            <c:if test="${not empty msg}">
                <div class="<c:out value='${cssClass}'/>">
                    <b><c:out value='${msg}'/></b>
                </div>
            </c:if>
            <div class="card-body">
               <div class="row">
                   <div class="col-md-6 col-sm-12">
                       <div class="form-group">
                           <label for="name">Name</label>
                           <input type="text" class="form-control" name="name" id="name" placeholder="Enter Name" value="">
                       </div>
                   </div>
                   <div class="col-md-6 col-sm-12">
                       <div class="form-group">
                           <label for="email">Email</label>
                           <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email" value="">
                       </div>
                   </div>
               </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="form-group">
                            <label for="address">Address</label>
                            <textarea name="address" id="address" cols="30" rows="5" class="form-control"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group">
                            <label>Gender</label>
                            <br>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="male" value="Male">
                                <label class="form-check-label" for="male">Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="female" value="Female">
                                <label class="form-check-label" for="female">Female</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="form-group">
                            <label for="myclass">Class</label>
                            <select name="myclass" id="myclass" class="form-control">
                                <option selected disabled>----- Select Class -----</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <input type="submit" class="btn btn-outline-success px-5 mr-4" value="Register Now">
                <input type="reset" class="btn btn-outline-danger px-3 mr-3" value="Reset">
            </div>
        </div>
    </form>
</div>


<%@include file="commons/js.jsp" %>
</body>
</html>
