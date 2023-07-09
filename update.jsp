<%@page import="java.sql.*"%>
<%@page import="com.db.*"%>
<%@page import="servlet1.servlet1" %>
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
       background:
		url(https://us.123rf.com/450wm/foxindustry/foxindustry1309/foxindustry130900013/22089109-blue-sky-abstract-background-vector-illustration.jpg)no-repeat;
	background-size: cover;
	background-position: center;
          }
          table {
            border-collapse: collapse;
            width: 500px;
            top: 200px;
            left: 50%;
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
          .update{
        position: absolute;
        width: 110px;
        height: 40px;
        bottom: 35px;
     
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
        left: 42%;
      }
       .update:hover{
        background-color: rgb(15, 15, 15);
        color: rgb(253, 243, 243);
      }
      #fname{
     position: relative;
            text-align: left;
            padding: 8px;
            border-width: medium;
            border-color: black;
            background-color:white;
              width:150px;
            left: 10%;
      }
      #lname{
      position: relative;
            text-align: left;
            padding: 8px;
            border-width: medium;
            border-color: black;
            background-color:white;
              width:150px;
              left: 12%;

      }
        </style>
      </head>
      <body>
        <h1>Voter Information</h1>
        
        <form action="update" method=Post>
        <input type="text" name="lname" id="fname">:<input type="text" name="fname" id="lname"> <br><br>
        <button onclick="editRow();"  class="update">Edit Row</button><br><br>
        </form>
        <div class="table">
        <table id="table" border="1">
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
             <th>vid</th>
             <td><%=rs.getInt(1) %></td>
           </tr>
           
           <tr>
            <th>vname</th>
            <td><%=rs.getString(2) %></td>
             </tr>
             
             <tr>
             <th>fathername</th>
             <td><%=rs.getString(3) %></td>
             </tr>
             
             <tr>
               <th>dob</th>
              <td><%=rs.getString(4) %></td>
             </tr>
             
             <tr>
              <th>gender</th>
              <td><%=rs.getString(5) %></td>
             </tr>
             
             <tr>
             <th>address</th>
           <td><%=rs.getString(6) %></td>
             </tr>
             
             <tr>
              <th>ward</th>
              <td><%=rs.getString(7) %></td>
             </tr>
             
             <tr>
               <th>emid</th>
              <td><%=rs.getString(8) %></td>
             </tr>
             
             <tr>
             <th>ph_no</th> 
             <td><%=rs.getString(9) %></td>
             </tr>
             
             <tr>
             <th>pwd</th> 
             <td><%=rs.getString(10) %></td>
             </tr>
            
          
          <% } } catch(Exception e){ e.printStackTrace(); } %>
        </table>
       
        <script>

             var table=document.getElementById("table"),rIndex;
    for(var i=0;i<table.rows.length;i++)
    {
        table.rows[i].onclick=function(){
            rIndex=this.rowIndex;
            console.log(rIndex);

            document.getElementById("fname").value=this.cells[0].innerHTML;
            document.getElementById("lname").value=this.cells[1].innerHTML;
        };
    }
     
     
    function editRow(){
        table.rows[rIndex].cells[0].innerHTML=document.getElementById("fname").value;
        table.rows[rIndex].cells[1].innerHTML=document.getElementById("lname").value;
    }
    
   
        </script>
        
        
    </div>
      </body>