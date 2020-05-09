import java.lang.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

/**
 *
 * @author Dyanesh
 */
public class signin1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism?","root",""); 
        Statement st=con.createStatement();
        String sql="select * from signup";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
        {
            if((request.getParameter("email").equals(rs.getString("email")))&&(request.getParameter("pwd").equals(rs.getString("password"))))
            {
               HttpSession session=request.getSession(true);
                session.setAttribute("email",request.getParameter("email"));
                session.setAttribute("name",rs.getString("Name"));
                response.sendRedirect("welcomeuser.jsp");
            }
                
               
        }
                out.println("<html><body>Input Failed</body></html>");
        
        st.close();
        con.close();
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
        }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
