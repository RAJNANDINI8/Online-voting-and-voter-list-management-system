package updatecandidate;
import servlet3.servlet3;
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

public class updatecandidate extends HttpServlet {
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

		if(value.equals("candidate_name")) {
			prep_stmt=conn.prepareStatement("update candidate set candidate_name=? where candidate_id=?");
		}
		
		else if(value.equals("candidate_id")) {
			prep_stmt=conn.prepareStatement("update candidate set candidate_id=? where candidate_id=?");
		}
		
		
		else if(value.equals("father_name")) {
			prep_stmt=conn.prepareStatement("update candidate set father_name=? where candidate_id=?");
		}
		else if(value.equals("DOB")) {
			prep_stmt=conn.prepareStatement("update candidate set DOB=? where candidate_id=?");
		}
		else if(value.equals("GENDER")) {
			prep_stmt=conn.prepareStatement("update candidate set GENDER=? where candidate_id=?");
		}
		else if(value.equals("ADDRESS")) {
			prep_stmt=conn.prepareStatement("update candidate set ADDRESS=? where candidate_id=?");
		}
		else if(value.equals("partyname")) {
			prep_stmt=conn.prepareStatement("update candidate set partyname=? where candidate_id=?");
		}
		else if(value.equals("EMAILID")) {
			prep_stmt=conn.prepareStatement("update candidate set EMAILID=? where candidate_id=?");
		}
		else if(value.equals("PHONENO")) {
			prep_stmt=conn.prepareStatement("update candidate set PHONENO=? where candidate_id=?");
		}
		else if(value.equals("PASSWD")) {
			prep_stmt=conn.prepareStatement("update candidate set PASSWD=? where candidate_id=?");
		}
		else if(value.equals("POSITION")) {
			prep_stmt=conn.prepareStatement("update candidate set POSITION=? where candidate_id=?");
		}
		
		
	    
		
	   
	    

	
		prep_stmt.setString(1, att);

		prep_stmt.setInt(2, servlet3.id);
		
		int rs=prep_stmt.executeUpdate();
		if(rs>0) {
			RequestDispatcher rd=request.getRequestDispatcher("UPDATED1.jsp");
			rd.forward(request, response);
			
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("TRYAGAIN.jsp");
			rd.forward(request, response);
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