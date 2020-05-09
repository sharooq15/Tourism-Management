<%@ page import="java.io.*,java.util.*,java.sql.* " %>
<%
   String name=(String)session.getAttribute("name");
   
%>
<html>
    <head>
        <title>
               Chennai Tourism
        </title>
        <script type="text/javascript" src="bootstrap.min.js"></script>
        <script type="text/javascript" src="bootstrap.js"></script>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="bootstrap.css">
        <link rel="stylesheet" type="text/css" href="bootstrap-theme.min.css">
        <link rel="stylesheet" type="text/css" href="mystyle.css">
    </head>
    <body>
     <div class="container">
        <div class="container-fluid ">
            <img src="" alt="">
            <h1 class="page-header h1white">Chennai Tourism</h1>
        </div>
        <div class="container-fluid">
            
            <nav class="nav navbar-default ">
                <ul class="nav nav-pills">
                <li role="presentation" class="active"><a href="index.html">Home</a></li>
                <li role="presentation"><a href="poa.html">Places of Attraction</a></li>
                <li role="presentation"><a href="packages.html">Packages</a></li>
                <li role="presentation"><a href="onlinebook.html">Online Booking</a></li>
                <li role="presentation"><a href="contactus.html">Contact Us</a></li>
                <button type="button" class="btn btn-default navbar-btn" align="right">
                    <a href="signin.html">Sign in</a>
                </button>
                </ul>
                
            </nav>
           
        </div>
        <div class="container-fluid mydiv">
            <div class="jumbotron">
                <h3 style="color:orange;">Welcome  ,<% out.print(name);%></h3>
            </div>             
                <h3>Payment Failed</h3>
                <div class="container-fluid col-lg-8">
                    
                </div>
            </div>
            <div class="container-fluid col-lg-12" align="right">
                Designed by Dyanesh,Naveen and Niranjan
            </div> 
        </div>
    </body>
</html>