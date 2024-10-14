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
    <title>Admin:All Orders</title>
    <%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<h3 class="text-center">Helloo Admin</h3>
<table class="table table-striped">
    <thead class="bg-primary">
    <tr>
        <th scope="col">Order ID</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Address</th>
        <th scope="col">Phone</th>
        <th scope="col">Service Name</th>
        <th scope="col">Price</th>
        <th scope="col">Time</th>
        <th scope="col">Payment Type</th>

    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Mark123@gmail.com</td>
        <td>123 Adress Tehh</td>
        <td>08088055555</td>
        <td>Air Clean</td>
        <td>100000</td>
        <td>20/07/2003</td>
        <td>Card</td>


    </tr>
    <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
        <td>Thornton</td>
        <td>Air Clean</td>
        <td>100000</td>
        <td>20/07/2003</td>
        <td>Card</td>

    </tr>

    </tbody>
</table>
</body>

</html>
