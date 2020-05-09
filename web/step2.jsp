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
                    <form action="step3.jsp" method="GET">
                        <div class="container-fluid">
                            <label >Amount Confirmation : </label> 
                            <input type="text" class="form-control" value="
                                   <% 
                                      java.util.Date d= new java.util.Date();
                                      String s=d.toString();
                                      long r=System.currentTimeMillis();
                                      String r1=Long.toString(r);
                                      String sno=r1;
                              Class.forName("com.mysql.jdbc.Driver");
                              String sql;
                              int amount=0;
                                Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism?","root",""); 
                                Statement st=con.createStatement();
                                int pack=Integer.parseInt((String)request.getParameter("pack"));
                                String pack1=request.getParameter("pack");
                                String nop=request.getParameter("nop");
                                String dov=request.getParameter("dov");
                                String status="FALSE";
                                sql="INSERT INTO packregister(packno,nop,dov,status,transid,username) VALUES ('"+pack+"','"+nop+"','"+dov+"','"+status+"','"+sno+"','"+(String)session.getAttribute("email")+"')";
                                st.executeUpdate(sql);
                 
                                session.setAttribute("tid",sno);
                                sql="select * from package where pno='"+pack+"'";
                                ResultSet rs=st.executeQuery(sql);
                                while(rs.next())
                                { 
                                    if(rs.getString("pno").equals(pack1))
                                    {
                                        amount=Integer.parseInt(rs.getString("pamount"));
                                        int nop1=Integer.parseInt(nop);
                                        amount=amount*nop1;
                                        out.println("Rs. ");
                                        out.println(amount);
                                        String abc=String.valueOf(amount);
                                        session.setAttribute("amount", abc);
                                        
                                    }
                                    
                                }
                            %>" disabled>
                        </div> <br/>
                        
                        <input type="submit" value="Proceed to Payment Gateway" class="btn btn-success"><br/>
                    </form>
                </div>
            </div>
            <div class="container-fluid col-lg-12" align="right">
                Designed by Dyanesh,Naveen and Niranjan
            </div> 
        </div>
    </body>
</html>