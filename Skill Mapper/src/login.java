

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public login() {
        super();
        
    }
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
	String ursnm = request.getParameter("uname");
	String passwrd = request.getParameter("pswrd");
	String msg = null;
	String query = "Select * from UserRecord where Email=? and ";
	try {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		
		Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=niit","sa","123");
		
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1,ursnm);
		ps.setString(2,passwrd);
		
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			if (rs.getString("status").equals("NA"))
			msg="Sorry your profile is pending for approval with HR desk";
			else
				msg="Profile Activated";
			if(!rs.getString("Role").equals("HR")) {
				RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp="+msg);
				rd.forward(request, response);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("Approve.jsp");
				rd.forward(request, response);
			}
		}	else {
				msg= "Invalid id or Password";
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp?err="+msg);
				rd.forward(request, response);
			}	
		}catch(Exception exception) {
			response.getWriter().println(exception);
			
		}
		
	}
  }		



