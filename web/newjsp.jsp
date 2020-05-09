
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%@page language="java" import="java.sql.*" %>
        <%@page language="java" import="java.util.*" %>
        <%
            java.util.Date d= new java.util.Date();
            String s=d.toString();
            long r=System.currentTimeMillis();
            String r1=Long.toString(r);
            String sno=(String)session.getAttribute("name");
   Class.forName("com.mysql.jdbc.Driver");
    String sql;
      Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism?","root",""); 
      Statement st=con.createStatement();
      Statement st1=con.createStatement();
    ResultSet rs =st.executeQuery("select * from bank where dbnumber='123'");
    out.println("CONNECTION DONE");
   while(rs.next())
    {
        if(rs.getString("cvv").equals("123")&&rs.getString("expmon").equals("12")&&rs.getString("expyear").equals("2018"))
        {
            out.println("HELOO");
            String balance=rs.getString("balance");
            int bal1=Integer.parseInt(balance);
            String amount1=(String)session.getAttribute("amount");
            int am1=Integer.parseInt(amount1);
            out.println("HI"+am1);
            if(bal1>am1)
            {
              bal1=bal1-am1;  
              
              sql="UPDATE bank set balance='" +bal1+ "' where dbnumber= '123'" ;
              st1.executeUpdate(sql);
              sql="UPDATE packregister set status='Paid' where sno='"+session.getAttribute("tid")+"'";
              st1.executeUpdate(sql);
              out.println("SUCCESS");
            }
         
    }
    }
    %>
    </body>
</html>
