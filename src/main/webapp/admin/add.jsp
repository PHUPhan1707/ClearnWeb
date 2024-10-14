<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 10/13/2024
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin: Add services</title>
    <%@include file="allCss.jsp"%>

</head>
<body style="background-color:#f0f1f2">
<%@include file="navbar.jsp"%>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Add Services</h4>
                        <c:if test="${not empty succMsg }">
                            <p class="text-center text-success">${succMsg }</p>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>

                        <c:if test="${not empty failedMsg }">
                            <p class="text-center text-danger">${failedMsg }</p>
                            <c:remove var="failedMsg" scope="session" />
                        </c:if>

                        <form action="../add_services" method="post"
                              enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Service Name*</label>
                                <input name="sname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Price*</label>
                                <input name="price" type="number" class="form-control" id="exampleInputPrice" aria-describedby="emailHelp" >
                            </div>
                            <div class="form-group">
                                <label for="inputState">Service Categories</label>
                                <select class="form-control" id="inputState" name="stype">
                                    <option selected>--Select--</option>
                                    <option value="New">New Service</option>
                                </select>

                            </div>
                            <div class="form-group">
                                <labe for="inputState">Service Status</labe>
                                <select class="form-control" id="inputState2" name="status">
                                    <option selected>--Select--</option>
                                    <option value="Active">Active</option>
                                    <option value="Inactive">Inactive</option>
                                </select>

                            </div>
                            <div class="form-group">
                                <labe for="exampleFormControlFile">Upload Photo</labe>
                                <input type="file" name="bimg" class="form-control" id="exampleFormControlFile">
                            </div>

                            <button type="submit" class="btn btn-primary">Add</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>



</body>
</html>
