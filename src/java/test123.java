/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class test123 extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
        Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism?","root","");
                Statement st=con.createStatement();
                String name=req.getParameter("name");
                String age=req.getParameter("age");
                String email=req.getParameter("email");
                String pwd=req.getParameter("pwd");
                String add1=req.getParameter("add1");
                String add2=req.getParameter("add2");
                String city=req.getParameter("city");
                String Query="INSERT INTO signup VALUES ('"+name+"','"+age+"','"+email+"','"+pwd+"','"+add1+"','"+add2+"','"+city+"')";
                st.executeUpdate(Query);
                //out.println("<html><body>HI</body></html>");
                response.sendRedirect("signupsuccess.html");
                st.close();
            
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
	
      }
  }
