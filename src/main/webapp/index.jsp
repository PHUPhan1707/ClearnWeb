<html>
<head>
    <title>
        HappiCleanse
    </title>

    <%@include file="all_component/allCss.jsp"%>
    <style>
        .back-img {
            background: url("material/mainBackGround.png");
            height: 80vh;
            width: 100%;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .crd-ho:hover{

        }
    </style>



</head>
<body>
    <%@include file="all_component/navbar.jsp"%>
    <div class="container-fluid back-img">

    </div>
    <div class="container">
        <h3 class="text-center">Recent Service</h3>
        <div class="row ">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <img alt="" src="material/background.jpg" style="width:150px; height:200px" class="img-thumblin">
                        <p>Clean Service</p>
                        <p>Categories: New,Quality,Cheap</p>
                        <div class="row">
                            <a href class="btn btn-danger btn-sm ml-1">Add service</a>
                            <a href class="btn btn-success btn-sm ml-1">View</a>
                            <a href class="btn btn-danger btn-sm ml-1" >40$/hour</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
