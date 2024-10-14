<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 10/13/2024
  Time: 6:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin:All Service</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<h3 class="text-center">Hello Admin</h3>
<table class="table table-striped">
    <thead class="bg-primary">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Price</th>
        <th scope="col">Categories</th>
        <th scope="col">Status</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
        <td>Mark</td>

        <td>
            <a href="#" class="btn btn-sm  btn-primary">Edit</a>
            <a href="#" class="btn btn-sm  btn-danger">Delete</a>
        </td>

    </tr>
    <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        <td>Thornton</td>

        <td>
            <a href="#" class="btn btn-sm  btn-primary">Edit</a>
            <a href="#" class="btn btn-sm  btn-danger">Delete</a>
        </td>
    </tr>

    </tbody>
</table>
</body>

</html>
