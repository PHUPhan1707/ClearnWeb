

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>


<html>
<head>
    <title>Home</title>
    <%@include file="allCss.jsp" %>
    <style type="text/css">
        a{
            text-decoration: none;
            color: black;
        }
        a:hover{
            text-decoration: none;
            color: black;
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>
<h1> Admin:Home</h1>
        <div class="row p-5">
            <div class="col-md-3">
                <a href="add.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-plus-square fa-3x text-primary"></i><br>
                            <h4>Add Service</h4>
                            --------------------
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3">
                <a href="allservice.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-list-check fa-3x text-danger"></i><br>
                            <h4>All Service</h4>
                            --------------------
                        </div>
                    </div>
                </a>

            </div>

            <div class="col-md-3">
                <a href="orders.jsp"><div class="card">
                    <div class="card-body text-center">
                        <i class="fas fa-box-open fa-3x text-warning"></i><br>


                        <h4>Order</h4>
                        --------------------
                    </div>
                </div>
                </a>

            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i>

                        </i><br>
                        <h4>Logout</h4>
                        --------------------
                    </div>
                </div>
            </div>
        </div>
<div style="margin-top:130px "><%@include file="footer.jsp" %></div>

</body>
</html>
