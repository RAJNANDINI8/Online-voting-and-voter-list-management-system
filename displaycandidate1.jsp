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
  box-sizing: border-box;
}

.row {
  margin-left:-5px;
  margin-right:-5px;
}
  
.column {
  float: left;
  width: 50%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

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
       background: linear-gradient(to right,rgb(50, 94, 224),rgb(81, 220, 224)) ;
        background-size: cover;
        background-position: center;
      }
      table {
        border-collapse: collapse;
        width: 100%;
        top: 200px;
        position: absolute;
      }
    
      th,
      td {
        top: 200px;
        text-align: left;
        padding: 8px;
      }

      th {
        background-color: transperent;
      }
      h1{
        position: absolute;
        top: 100px;
        color: black;
        left: 40%;
      }
       .vote{
        position: absolute;
    width: 110px;
    height: 40px;
  bottom: 50px;
  left: 45%;
    background: transparent;
    border: 2px solid #0f0e0e;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.1em;
    color: rgb(9, 8, 8);
 font-weight: 500;
 margin-left: 40px;
 transition:  .5s;
  }
   .vote:hover{
    background-color: rgb(15, 15, 15);
    color: rgb(253, 243, 243);
  }
      
    </style>
  </head>
  <body>
  


    <h1>Candidate information</h1>
    
    

      <% 
      Connection conn = null;
      Statement stmt = null; 
      ResultSet rs=null; 
      try{ 
    	  Class.forName("com.mysql.jdbc.Driver");
      conn=DriverManager.getConnection("jdbc:mysql://localhost/Online_Voting_System","root","Utkarsha@06");
      stmt = conn.createStatement(); 
      
  
      PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement("select candidate_name,partyname from candidate where POSITION=?");
		prep_stmt.setString(1, serv.election);
	
		
	    rs=prep_stmt.executeQuery();
      while(rs.next()){
    	  %>
    	    <div class="row">
    	    <div class="column">
    	  <table >
      <tr>
       <th>CANDIDATE NAME : </th>
        <td><%=rs.getString(1) %></td>
        <th>PARTY NAME : </th>
        <td><%=rs.getString(2) %> <br>
       <br>
     </td>
    
      </tr>
     
       </table>
       </div>
       </div>
       

      <% } } catch(Exception e){ e.printStackTrace(); } %>
   
    <button class="vote">Vote</button>
  </body>