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
                <button type="button" class="btn btn-default navbar-btn" align="right">
                    <a href="signin.html">Sign in</a>
                </button>
                </ul>
                
            </nav>
           
        </div>
        <div class="container-fluid mydiv">
            <div class="jumbotron">
              <h1>Welcome <%out.println(name); %> ! Shall we start booking our trip online ?</h1>
              <p>Just fill in the few details below and you are into the trip</p>
              <p></p>
              <p><a class="btn btn-primary btn-lg" href="poa.html" role="button">Learn more</a></p>
            </div>             
                <h3>Package Selection</h3>
                <div class="container-fluid">                                

                    <form action="step2.jsp" method="GET">
                        <div class="container-fluid">
                            <label >Package</label> 
                            <select class="form-control" required name="pack">
                                <option value="1">One Day Around Chennai</option>
                                <option value="2">Two nights in Chennai</option>
                                <option value="3">Family Package</option>
                                <option value="4">Couples Package</option>
                             </select> 
                        </div> <br/>
                        <div class="container-fluid">
                            <label>Date of visit   </label>
                            <input type="date" class="form-control" required name="dov">
                        </div> <br/>
                        <div class="container-fluid">
                            <label>Number of People  </label>
                            <input type="number" min="1" max="10" class="form-control" required name="nop">
                        </div> <br/>
                        <input type="submit" value="Amount Confirmation" class="btn btn-success"><br/>
                    </form>
                </div>
            </div>
            <div class="container-fluid col-lg-12" align="right">
                Designed by Dyanesh,Naveen and Niranjan
            </div> 
        </div>
    </body>
</html>