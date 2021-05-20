<nav class="navbar navbar-expand-lg navbar-dark bg-dark primary-background">
    <div class="container px-5 mx-5">
        <a class="navbar-brand" href="<c:url value='/'/>"><i class="fa fa-user mx-2"></i>Student Portal</a>
        <button class="navbar-toggler text-white" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <c:if test="${sessionScope.currentPage != 'homePage'}">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="<c:url value='/register'/>"> <i class="fa fa-user-plus mx-2"> </i> New Student</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="<c:url value='/studentsAll'/>"><i class="fa fa-users"></i> All Students</a>
                    </li>
                </ul>
            </div>
        </c:if>
        
    </div>
</nav>