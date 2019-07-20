

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger log = Logger.getAnonymousLogger();

    public Register() {
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName,lastName,email,pass,gender,role;
		PrintWriter out = response.getWriter();
		
		firstName = request.getParameter("Fname");
		lastName = request.getParameter("Lname");
		email = request.getParameter("email");
		pass = request.getParameter("pswrd");
		gender = request.getParameter("gender");
		role = request.getParameter("dob");
		 String Query = "Insert into UserRecord values (?,?,?,?,?,?)";
		 try{
		    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		    log.info("Driver Loaded");
		    Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=niit","sa","123");
		    log.info("Connection Created");
		    PreparedStatement ps = con.prepareStatement(Query);
		    ps.setString(1,firstName);
		    ps.setString(2,lastName);
		    ps.setString(3,email);
		    ps.setString(4,pass);
		    ps.setString(5,gender);                                                                                                                                                                                                                                                                                                                                            
		    ps.setString(6,role);
		    
		    int count = ps.executeUpdate();
		    if(count>0) {
		    	log.info("Record Added");
		    	
		    	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		    	rd.forward(request,response);
		    }
		    
		    else {
		    	log.info("Failed add Operation");
		    	}
		    	
		    }catch(SQLException exception) {
		       log.info("SQL Error :"+exception);
		    }catch(ClassNotFoundException cfe) {
		    	log.info("Driver Error : "+cfe);
		    }catch(Exception exp) {
		    	log.info(""+exp);
		    }
		    
		    
		 
		 }
}
