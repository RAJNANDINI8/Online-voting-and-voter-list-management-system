<%@page import="java.sql.*"%>
<%@page import="com.db.*"%>

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
        top: 200px;
        position: absolute;
      }
    
      th,
      td {
        top: 200px;
        text-align: left;
        padding: 8px;
        border-width: medium;
        border-color: black;
      }

      th {
        background-color: #f3ecec;
      }
      h1{
        position: absolute;
        top: 100px;
        color: black;
        left: 40%;
      }
      header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 20px 100px;
  
    display:flex;
    justify-content: space-between;
    align-items: center;
    z-index:99 ;
  }
  .logo{
    font-size: 2em;
    color: white;
    user-select: none;

  }
  .navigation a{
    position: relative;
    font-size: 1.1em;
    color: #0c0c0c;
    text-decoration: none;
    font-weight: 500;
    margin-left: 40px;
  }
  .navigation a::after{
    content: '';
    position: absolute;
    left: 0;
    bottom: -6px;
    width: 100%;
    height: 3px;
    background: rgb(21, 20, 20);
    border-radius: 5px;
    transform-origin: right;
    transform: scaleX(0);
    transition: transform  0.5s;
  }

  .navigation a:hover::after{
transform-origin: left;
transform: scaleX(1);
}
  .navigation .btnLogin-popup{
    width: 110px;
    height: 40px;
  
    background: transparent;
    border: 2px solid  black;;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.1em;
    color: black;
 font-weight: 500;
 margin-left: 40px;
 transition:  .5s;
  }
  .navigation .btnLogin-popup:hover{
    background-color: rgb(15, 15, 15);
    color: rgb(253, 243, 243);
  }
    </style>
  </head>
  <body>
  <header>
    <h2 class="Logo">Evote</h2>
    <nav class="navigation">
     <button class="btnLogin-popup" onclick="window.location.href = 'afteradmin.jsp';">Back</button>
     <button class="btnLogin-popup" onclick="window.location.href = 'voterlogin.jsp';">Home</button>
    </nav>
  </header>
    <h1>Voter information</h1>
    <table border="1">
      <tr>
        <th>Voter Id</th>
        <th>Voter Name</th>
        <th>Father Name</th>
        <th>Date Of Birth</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Ward No</th>
        <th>Email ID</th>
        <th>Phone No</th>
        
      </tr>

      <% Connection conn = null; Statement stmt = null; Blob image=null;
      ResultSet rs=null; try{ Class.forName("com.mysql.jdbc.Driver");
      conn=DriverManager.getConnection("jdbc:mysql://localhost/Online_Voting_System","root","Utkarsha@06");
      stmt = conn.createStatement(); String q="select * from Voter";
      rs=stmt.executeQuery(q); 
      while(rs.next()){ %>
      <tr>
        <td><%=rs.getInt(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
        <td><%=rs.getString(7) %></td>
        <td><%=rs.getString(8) %></td>
        <td><%=rs.getString(9) %></td>
    
      </tr>

      <% } } catch(Exception e){ e.printStackTrace(); } %>
    </table>
  </body>