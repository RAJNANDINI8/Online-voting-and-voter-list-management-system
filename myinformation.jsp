<%@page import="java.sql.*"%>
<%@page import="com.db.*"%>
<%@page import="servlet1.servlet1" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Evote</title>

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
           background: url(https://media.istockphoto.com/id/911633218/vector/abstract-geometric-medical-cross-shape-medicine-and-science-concept-background.jpg?s=612x612&w=0&k=20&c=eYz8qm5xa5wbWCWKgjOpTamavekYv8XqPTA0MC4tHGA=) no-repeat;
    background-size: cover;
    background-position: center;
      }
      table {
        border-collapse: collapse;
        width: 500px;
        top: 200px;
        left: 32%;
        position: absolute;
        background-color:white;
      }
      
      
      th,
      td {
        top: 200px;
        text-align: left;
        padding: 8px;
        border-width: medium;
        border-color: black;
        background-color:white;
          width:150px;
      
      }

      th {
        background-color: white;
      }
      h1{
        position: absolute;
        top: 100px;
        color: black;
        left: 40%;
      }
    </style>
  </head>
  <body>
    <h1>My information</h1>
    <div class="table">
    <table border="1">

      <% Connection conn = null;
      Statement stmt = null;
      ResultSet rs=null; 
      try{ 
      Class.forName("com.mysql.jdbc.Driver");
      conn=DriverManager.getConnection("jdbc:mysql://localhost/Online_Voting_System","root","Utkarsha@06");
      stmt = conn.createStatement();
  	
	
      
        PreparedStatement prep_stmt;
		prep_stmt=conn.prepareStatement("select * from Voter where emid=?");
		prep_stmt.setString(1, servlet1.Email);
	    rs=prep_stmt.executeQuery();
      
      
      while(rs.next() ){ %>
      <tr>
         <th>Voter Id</th>
         <td><%=rs.getInt(1) %></td>
       </tr>
       
       <tr>
        <th>Voter Name :</th>
        <td><%=rs.getString(2) %></td>
         </tr>
         
         <tr>
         <th>Father Name :</th>
         <td><%=rs.getString(3) %></td>
         </tr>
         
         <tr>
           <th>Date Of Birth :</th>
          <td><%=rs.getString(4) %></td>
         </tr>
         
         <tr>
          <th>Gender :</th>
          <td><%=rs.getString(5) %></td>
         </tr>
         
         <tr>
         <th>Address :</th>
       <td><%=rs.getString(6) %></td>
         </tr>
         
         <tr>
          <th>Ward No :</th>
          <td><%=rs.getString(7) %></td>
         </tr>
         
         <tr>
           <th>Email ID</th>
          <td><%=rs.getString(8) %></td>
         </tr>
         
         <tr>
         <th>Phone No</th> 
         <td><%=rs.getString(9) %></td>
         </tr>
          <tr>
             <th>Password</th> 
             <td><%=rs.getString(10) %></td>
             </tr>
            
        
      
      <% } } catch(Exception e){ e.printStackTrace(); } %>
    </table>
</div>
  </body>