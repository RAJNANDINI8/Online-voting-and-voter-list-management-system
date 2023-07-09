package servlet1;

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

/**
 * Servlet implementation class servlet1
 */
public class servlet1 extends HttpServlet {
	static final String DB_URL ="jdbc:mysql://localhost/Online_Voting_System";
	static final String USER = "root";
	static final String PASS="Parbhani@123";
	private static final long serialVersionUID = 1L;
	public static String Email;
	public static int  VID;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		
		try{
			
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		Email=request.getParameter("email");
		String p=request.getParameter("txtPwd");
        VID= Integer.parseInt(request.getParameter("vid"));
		
		
		
		PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement("select emid from Voter where emid=? and pwd=? and vid=?");
		prep_stmt.setString(1, Email);
		prep_stmt.setString(2, p);
		prep_stmt.setInt(3, VID);
		ResultSet rs=prep_stmt.executeQuery();
		if(rs.next()) {
			RequestDispatcher rd=request.getRequestDispatcher("aftervoter.jsp");
			rd.forward(request, response);
			
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("loginfailed.jsp");
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