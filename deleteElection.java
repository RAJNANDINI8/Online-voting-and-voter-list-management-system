package deleteElection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class deleteElection extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final String DB_URL ="jdbc:mysql://localhost/Online_Voting_System";
	static final String USER = "root";
	static final String PASS="Parbhani@123";
	
  
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		try{
			
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(DB_URL,USER,PASS);

		String name=request.getParameter("ele");
	
		
		
		PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement("delete from election_name where ELECTION_POSITION=?");
		prep_stmt.setString(1, name);
		
		
		
		int rs=prep_stmt.executeUpdate();
		if(rs>0) {
			RequestDispatcher rd=request.getRequestDispatcher("deletes.jsp");
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