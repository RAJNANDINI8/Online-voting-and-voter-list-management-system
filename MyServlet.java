package MyServlet;

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
import servlet1.servlet1;
import serv.serv;
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final String DB_URL ="jdbc:mysql://localhost/Online_Voting_System";
	static final String USER = "root";
	static final String PASS="PArbhani@123";
	
	public static String Email;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
			
			try{
				
		
			response.setContentType("text/html");
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(DB_URL,USER,PASS);
			PrintWriter out=response.getWriter();
			String candidateAndParty = request.getParameter("candidateName");
			
			String[] parts = candidateAndParty.split("\\s+", 2);

			String candidateId = parts[0];
			int candidateId1=Integer.parseInt(candidateId);
			String partyName = parts[1];
            int voter_id=servlet1.VID;
            
            PreparedStatement prep_stmt;
			prep_stmt=conn.prepareStatement("select vname from Voter where vid=?");
			prep_stmt.setInt(1, voter_id);
			ResultSet rs=prep_stmt.executeQuery();
			String voter_name="";
			int vid1=0;
			if(rs.next()) {
			   voter_name=rs.getString("vname");
			   PreparedStatement prep_stmt2;
				prep_stmt2=conn.prepareStatement("select voter_id from result where voter_id=?");
				prep_stmt2.setInt(1, voter_id);
				ResultSet rs2=prep_stmt2.executeQuery();
				if(!(rs2.next())) {
				
				
				PreparedStatement prep_stmt1;
				prep_stmt1=conn.prepareStatement("insert into result(voter_id,voter_name,candidateId,partyName,position)"+" values(?,?,?,?,?)");
				prep_stmt1.setInt(1, voter_id);
				prep_stmt1.setString(2, voter_name);
				prep_stmt1.setInt(3, candidateId1);
				prep_stmt1.setString(4, partyName);
				prep_stmt1.setString(5, serv.election);
				int rs1=prep_stmt1.executeUpdate();
				
				
				if(rs1>0) {
					RequestDispatcher rd=request.getRequestDispatcher("voted.jsp");
					rd.forward(request, response);
					
				}
				else {
					RequestDispatcher rd=request.getRequestDispatcher("loginfailed.jsp");
					rd.forward(request, response);
					
				}
				}
				else {
					RequestDispatcher rd=request.getRequestDispatcher("alreadyvoted.jsp");
					rd.forward(request, response);
				}
			} else {
			    out.println("No voter found with ID " + voter_id);
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