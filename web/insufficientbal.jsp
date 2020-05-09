<%@ page import="java.io.*,java.util.*,java.lang.* " %>
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
               
                </ul>
                
            </nav>
           
        </div>
        <div class="container-fluid mydiv">
                        
                <h3>Payment Info</h3>
                <div class="container-fluid col-lg-12" style="color:white;font-size: 30px;">                                
                    Hi, <% out.println(session.getAttribute(name)); %>
                    <br/>
                    Insufficient Balance 
                    <br/>
                </div>
            </div>
            <div class="container-fluid col-lg-12" align="right">
                Designed by Dyanesh,Naveen and Niranjan
            </div> 
        </div>
    </body>
</html>