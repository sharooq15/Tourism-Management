<%@ page import = "java.io.*,java.util.*,java.lang.*,java.sql.* " %>
<%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism?","root","");
                Statement st=con.createStatement();
                String name=request.getParameter("name");
                String age=request.getParameter("age");
                String email=request.getParameter("email");
                String pwd=request.getParameter("pwd");
                String add1=request.getParameter("add1");
                String add2=request.getParameter("add2");
                String city=request.getParameter("city");
                String Query="INSERT INTO signup VALUES ('"+name+"','"+age+"','"+email+"','"+pwd+"','"+add1+"','"+add2+"','"+city+"')";
                st.executeUpdate(Query);
                //out.println("<html><body>HI</body></html>");
                response.sendRedirect("signupsuccess.html");
                st.close(); %>
