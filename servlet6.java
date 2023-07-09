package deletervoter;


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

@WebServlet("/servlet6")
public class servlet6 extends HttpServlet {
	static final String DB_URL ="jdbc:mysql://localhost/Online_Voting_System";
	static final String USER = "root";
	static final String PASS="Parbhani@123";
	private static final long serialVersionUID = 1L;
  
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		try{
			
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		String id=request.getParameter("id-card-outline");
		String name=request.getParameter("person");
		String ward=request.getParameter("person1");
		
		
		PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement("delete from Voter where vid= ? and vname=? and ward=?");
		prep_stmt.setString(1, id);
		prep_stmt.setString(2, name);
		prep_stmt.setString(3, ward);
		
		int rs=prep_stmt.executeUpdate();
		if(rs>0) {
			RequestDispatcher rd=request.getRequestDispatcher("deletes.jsp");
			rd.forward(request, response);
		}
		else {
			out.println("<font color=red size=18 background-color: #d7e4f0>failed to delete!!<br>");
			out.println("<a href=deletevoter.jsp> Try Again!!</a>");
			
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