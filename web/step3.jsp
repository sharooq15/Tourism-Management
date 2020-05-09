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
                <h3>Amount Confirmation</h3>
                <div class="container-fluid col-lg-8">
                    <form action="step4.jsp" method="GET">
                        <div class="container-fluid">
                            <label >Debit Card Number </label> 
                            <input type="text" class="form-control" name="dbnumber" >
                        </div> <br/>
                        <div class="container-fluid col-lg-12">
                             <label >Expiry Month and Year </label> <br/>
                            <div class="col-lg-6">
                             <input type="number" min=1 max=12 class="form-control" name="expmon" >
                            </div>
                            <div class="col-lg-6">
                             <input type="number" min=2017 max=2050 class="form-control" name="expyear" >
                            </div>
                        </div> <br/><br/>
                        <div class="container-fluid col-lg-12">
                            <label >CVV Number </label> 
                            <input type="number" min="100" max="999" class="form-control" name="cvv" >
                        </div> <br/>
                        <input type="submit" value="Pay" class="btn btn-success"><br/>
                    </form>
                </div>
            </div>
            <div class="container-fluid col-lg-12" align="right">
                Designed by Dyanesh,Naveen and Niranjan
            </div> 
        </div>
    </body>
</html>