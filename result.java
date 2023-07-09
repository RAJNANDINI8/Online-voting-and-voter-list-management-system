package result;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import servlet1.servlet1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class result extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static final String DB_URL ="jdbc:mysql://localhost/Online_Voting_System";
	static final String USER = "root";
	static final String PASS="Parbhani@123";
	
	public static String election;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 election=request.getParameter("election");
		 Connection conn = null;
			
			try{
				
		
			response.setContentType("text/html");
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(DB_URL,USER,PASS);
			PrintWriter out=response.getWriter();
		
         
            PreparedStatement prep_stmt;
			prep_stmt=conn.prepareStatement("select END_DATE from election_name where ELECTION_POSITION=?");
			prep_stmt.setString(1, election);
			ResultSet rs=prep_stmt.executeQuery();
			 rs.next();
			
			String END_DATE=rs.getString("END_DATE");
			
			
			
			PreparedStatement prep_stmt2;
			prep_stmt2=conn.prepareStatement("SELECT DATEDIFF(NOW(), ?) AS date_diff1 FROM election_name");
			prep_stmt2.setString(1, END_DATE);
			ResultSet rs2=prep_stmt2.executeQuery();
			rs2.next();
			int diff2=rs2.getInt("date_diff1");
			
			
			if(diff2>=0) {
				RequestDispatcher rd=request.getRequestDispatcher("ADDVOTE.jsp");
				rd.forward(request, response);
			}
			
			else {
				out.println("Result is not declared!!!");
				}
			

	}
			catch(ClassNotFoundException e)
			{
			e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}}

}