<%@page import="java.sql.*"%>
<%@page import="serv.serv"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Display The Contents Of Table</title>

<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
  }
  
  body {
    display: flex;
    justify-content: top;
    align-items: center;
    min-height: 100vh;
     background: url(https://img.freepik.com/premium-photo/scientific-molecule-background-with-flow-waves-medicine-science-technology-chemistry-wallpaper-banner-with-dna-molecules-geometric-dynamic-linear-waves-illustration_230610-1050.jpg?w=2000) no-repeat;
    background-size: cover;
    background-position: center;
  }
  
  table {
    
    border-collapse: collapse;
    width: 100%;
    margin-top: 50px;
    top: 240px;
    text-align: center;
    display:inline-block;
  }
  
  tr {
 
     display:inline-block;
   
  }
  
  th,
  td {
    text-align: left;
    padding: 8px;
  }

  th {
    background-color: transparent;
  }
  
  h1 {
    position: absolute;
    top: -30px;
    left: 44%;
    margin-top: 50px;
    color: black;
    text-align: center;
  }
  
  .candidate-box {
    border: 2px solid #0f0e0e;
    padding: 10px;
    margin: 10px;
    border-radius: 6px;
    background-color: #fff;
    text-align: center;
  }

  .candidate-box h2 {
  font-size: 3em;
  margin: 15px 0 10px 0; /* add a margin-bottom of 10px */
}



  .vote {
    width: 110px;
    height: 40px;
    background: transparent;
    border: 2px solid #0f0e0e;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.1em;
    color: rgb(9, 8, 8);
    font-weight: 500;
    margin: 5px auto;
    transition: .5s;
     display: inline-block;
  }
  .candidate-box button{
   display:inline-block;}
  

  .vote:hover {
    background-color: rgb(15, 15, 15);
    color: rgb(253, 243, 243);
  }
  
  .container{
 
     display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin: 10px;
  background-color:transperent;
  background-filter:blur(20px);
  border: 2px solid #0f0e0e;
  padding: 10px;
  width: 400px;
  border-radius:10px;
  }
 
  
</style>


  </head>
  <body>
  


    <h1>VOTE</h1>
<form action="MyServlet" method="post">

    <table>
     

      <% 
      Connection conn = null;
      Statement stmt = null; 
      ResultSet rs=null; 
      try{ 
    	  Class.forName("com.mysql.jdbc.Driver");
      conn=DriverManager.getConnection("jdbc:mysql://localhost/Online_Voting_System","root","Utkarsha@06");
      stmt = conn.createStatement(); 
      
  
      PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement("select  candidate_id,candidate_name,partyname from candidate where POSITION=?");
		prep_stmt.setString(1, serv.election);
	
	   rs=prep_stmt.executeQuery();
	   while(rs.next()){
		   String  candidate_id = rs.getString("candidate_id");
		   String candidateName = rs.getString("candidate_name");
			String partyName = rs.getString("partyname");
			%>
			
			<tr>
		
				<td>
					<div class="container">
						<h2><%= candidateName %></h2>
						<h2><%= partyName %></h2>
<button type="submit" name="candidateName" value="<%=candidate_id %> <%= partyName %>" class="vote">Vote</button>

						<button type="submit" name="id-card-outline" value="<%= candidate_id %>" class="vote"  formaction="GetBookServlet" formmethod="GET">info</button>
						
					</div>
				</td>
				
			</tr>
			
			
<%
		     }} catch(Exception e){ e.printStackTrace(); } %>
    </table>
    </form>
   
  </body>