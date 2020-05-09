<%@ page import="java.io.*,java.util.*,java.sql.* " %>
<%
    String name=(String)session.getAttribute("name");
    Class.forName("com.mysql.jdbc.Driver");
    String sql;
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism?","root",""); 
    Statement st=con.createStatement();
    sql="Update packregister set amount='"+session.getAttribute("amount")+"' where transid='"+session.getAttribute("tid")+"'";
    st.executeUpdate(sql);
    out.println("HI");
    // response.sendRedirect("newjsp.jsp");
    String dbnumber=request.getParameter("dbnumber");
    String cvv=request.getParameter("cvv");
    String expmon=request.getParameter("expmon");
    String expyear=request.getParameter("expyear");
    Statement st1=con.createStatement();
    ResultSet rs =st.executeQuery("select * from bank where dbnumber='"+dbnumber+"'");
    out.println("CONNECTION DONE");
      while(rs.next())
    {
        if(rs.getString("cvv").equals(cvv)&&rs.getString("expmon").equals(expmon)&&rs.getString("expyear").equals(expyear))
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
              sql="UPDATE bank set balance='" +bal1+ "' where dbnumber= '"+dbnumber+"'" ;
              st1.executeUpdate(sql);
              sql="UPDATE packregister set status='Paid' where transid='"+session.getAttribute("tid")+"'";
              st1.executeUpdate(sql);
              response.sendRedirect("successtransac.jsp");
            }
            else
            {
                response.sendRedirect("insufficentbal.html");
            }
         
        }
        else
        {
            response.sendRedirect("validateError.jsp");
        }
    }
      
%>