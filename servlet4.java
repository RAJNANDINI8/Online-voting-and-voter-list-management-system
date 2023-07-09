package servlet4;

import java.io.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.sql.*;

/**
 * Servlet implementation class servlet1
 */

@MultipartConfig(maxFileSize=16*1024*1024)
public class servlet4 extends HttpServlet {
	static final String DB_URL ="jdbc:mysql://localhost/Online_Voting_System";
	static final String USER = "root";
	static final String PASS="Parbhani@123";
	private static final long serialVersionUID = 1L;
  
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		response.setContentType("text/html;charset=UTF-8");
		try{
			
		String query = " insert into candidate(candidate_id,candidate_name,father_name,image,partyname,DOB,GENDER,POSITION,EMAILID,PASSWD,PHONENO,ADDRESS)"+" values(?,?,?,?,?,?,?,?,?,?,?,?)";

		Part p1=request.getPart("image");
		InputStream in=p1.getInputStream();
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		String Email=request.getParameter("mail");
		String p=request.getParameter("lock-closed");
		String add=request.getParameter("home-outline");
		String id1=request.getParameter("id-card-outline");
		String Name=request.getParameter("person");
		String date=request.getParameter("DATE");
		String gender=request.getParameter("transgender-outline");
		String phone=request.getParameter("call-outline");
		double pn=Double. parseDouble(phone);
		String fname=request.getParameter("person1");
		String party=request.getParameter("party");
		String position=request.getParameter("position");
	
		
		
		
		PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement(query);
		prep_stmt.setString(1,id1);
		prep_stmt.setString(2,Name);
		prep_stmt.setString(3,fname);
		prep_stmt.setString(6,date);
		prep_stmt.setString(7,gender);
		prep_stmt.setString(12,add);
		prep_stmt.setString(9,Email);
		prep_stmt.setDouble(11,pn);
		prep_stmt.setString(8,position);
		prep_stmt.setString(5,party);
		prep_stmt.setBlob(4,in);
		prep_stmt.setString(10,p);

		
		
		int rs=prep_stmt.executeUpdate();
		if(rs>0) {
			RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
			
		}
		else {
			out.println("<font color=red size=18 background-color: #d7e4f0> login failed!!<br>");
			out.println("<a href=candidatelogin.jsp> Try Again!!</a>");
			
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