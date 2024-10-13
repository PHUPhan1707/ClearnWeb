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
<body>
<%@include file="navbar.jsp"%>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <form action="../AdminAdd" method="post"
                    enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Service Name</label>
                            <input name="sname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Price</label>
                            <input name="sname" type="text" class="form-control" id="exampleInputPrice" aria-describedby="emailHelp" >
                        </div>
                </form>
            </div>
        </div>
    </div>



</body>
</html>
