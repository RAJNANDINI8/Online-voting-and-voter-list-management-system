package update;
import servlet1.servlet1;
import java.io.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;

public class update extends HttpServlet {
	static final String DB_URL ="jdbc:mysql://localhost/Online_Voting_System";
	static final String USER = "root";
	static final String PASS="Utkarsha@06";
	private static final long serialVersionUID = 1L;
  
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		try{
			
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		PreparedStatement prep_stmt = null;
		

		 
		
		String att=request.getParameter("fname");
		String value=request.getParameter("lname");

		if(value.equals("vname")) {
			prep_stmt=conn.prepareStatement("update Voter set vname=? where emid=?");
		}
		
		else if(value.equals("vid")) {
			prep_stmt=conn.prepareStatement("update Voter set vid=? where emid=?");
		}
		
		
		else if(value.equals("fathername")) {
			prep_stmt=conn.prepareStatement("update Voter set fathername=? where emid=?");
		}
		else if(value.equals("dob")) {
			prep_stmt=conn.prepareStatement("update Voter set dob=? where emid=?");
		}
		else if(value.equals("gender")) {
			prep_stmt=conn.prepareStatement("update Voter set gender=? where emid=?");
		}
		else if(value.equals("address")) {
			prep_stmt=conn.prepareStatement("update Voter set address=? where emid=?");
		}
		else if(value.equals("ward")) {
			prep_stmt=conn.prepareStatement("update Voter set ward=? where emid=?");
		}
		else if(value.equals("emid")) {
			prep_stmt=conn.prepareStatement("update Voter set emid=? where emid=?");
		}
		else if(value.equals("ph_no")) {
			prep_stmt=conn.prepareStatement("update Voter set ph_no=? where emid=?");
		}
		else if(value.equals("pwd")) {
			prep_stmt=conn.prepareStatement("update Voter set pwd=? where emid=?");
		}
		
	    
		
	   
	    

	
		prep_stmt.setString(1, att);
//		prep_stmt.setString(2, att);
		prep_stmt.setString(2, servlet1.Email);
		
		int rs=prep_stmt.executeUpdate();
		if(rs>0) {
			RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
			rd.forward(request, response);
			
		}
		else {
			out.println("<font color=red size=18 background-color: #d7e4f0>failed to delete!!<br>");
			out.println("<a href=deletecandidate.jsp> Try Again!!</a>");
			
		}
		}
		catch(ClassNotFoundException e)
		{
		e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}