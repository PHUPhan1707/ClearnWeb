<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 10/10/2024
  Time: 5:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Cleanse :Register</title>
    <%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2">
<%@include file="all_component/navbar.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Registration Page </h4>
                    <c:if test="${not empty succMsg }">
                        <p class="text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>
                    <c:if test="${not empty failedMsg }">
                        <p class="text-center text-danger">${failedMsg}</p>
                        <c:remove var="failedMsg" scope="session"/>
                    </c:if>
                    <form action="register" method="post">

                        <div class="form-group">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Full Name</label>
                                <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" required="required" name="fname">

                            </div>
                        </div>
                        <div class="form-group">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
                        </div>
                        </div>

                        <div class="form-group"><div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Phone Number</label>
                            <input type="number" class="form-control" id="exampleInputPhone" aria-describedby="emailHelp" required="required" name="phone">

                        </div>
                        </div>

                        <div class="form-group"><div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
                        </div>
                        </div>


                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" name="check" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Agree term and condition</label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>
