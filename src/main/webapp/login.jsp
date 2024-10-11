<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 10/10/2024
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color:#f0f1f2">
    <%@include file="all_component/navbar.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4" >
                <div class="card">
                    <div class="card-body">
                        <h5 class="text-center">Login</h5>
                        <form>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">

                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" required="required">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Login</button>
                                <br>
                                <a href="register.jsp">Create Account</a>

                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
