package servlet2;

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

import emailverification.User;


public class servlet2 extends HttpServlet {
	static final String DB_URL ="jdbc:mysql://localhost/Online_Voting_System";
	static final String USER = "root";
	static final String PASS="Parbhani@123";
	private static final long serialVersionUID = 1L;
  
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		try{
	
		String query = " insert into Voter(vid,vname,fathername,dob,gender,address,ward,emid,ph_no,pwd)"+" values(?,?,?,?,?,?,?,?,?,?)";
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		
		
		PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement(query);
		prep_stmt.setString(1,User.id1);
		prep_stmt.setString(2,User.Name);
		prep_stmt.setString(3,User.fname);
		prep_stmt.setString(4,User.date);
		prep_stmt.setString(5,User.gender);
		prep_stmt.setString(6,User.add);
		prep_stmt.setString(7,User.waredno);
		prep_stmt.setString(8,User.Email);
		prep_stmt.setString(9,User.phone);
		prep_stmt.setString(10,User.p);
		

		
		
		int rs=prep_stmt.executeUpdate();
		System.out.println(rs);
		if(rs>0) {
			RequestDispatcher rd=request.getRequestDispatcher("voterlogin.jsp");
			rd.forward(request, response);
			
		}
		else {
			out.println("<font color=red size=18 background-color: #d7e4f0> login failed!!<br>");
			out.println("<a href=voterlogin.jsp> Try Again!!</a>");
			
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