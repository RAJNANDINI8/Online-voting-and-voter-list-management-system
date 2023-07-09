<%@page import="java.sql.*"%>
<%@page import="com.db.*"%>
<%@page import="servlet3.servlet3" %>
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
        left:38%;
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
        <h1>Candidate Information</h1>
        
        <form action="updatecandidate" method=Post>
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
            prep_stmt=conn.prepareStatement("select candidate_id,candidate_name,father_name,partyname,DOB,GENDER,POSITION,EMAILID,PASSWD,PHONENO,ADDRESS from candidate where candidate_id=?");
            prep_stmt.setInt(1, servlet3.id);
            rs=prep_stmt.executeQuery();

          
          while(rs.next() ){ %>
          <tr>
             <th>candidate_id</th>
             <td><%=rs.getInt(1) %></td>
           </tr>
           
           <tr>
            <th>candidate_name</th>
            <td><%=rs.getString(2) %></td>
             </tr>
             
             <tr>
             <th>father_name</th>
             <td><%=rs.getString(3) %></td>
             </tr>
             
             <tr>
               <th>partyname</th>
              <td><%=rs.getString(4) %></td>
             </tr>
             
             <tr>
              <th>DOB</th>
              <td><%=rs.getString(5) %></td>
             </tr>
             
             <tr>
             <th>GENDER</th>
           <td><%=rs.getString(6) %></td>
             </tr>
             
             <tr>
              <th>POSITION</th>
              <td><%=rs.getString(7) %></td>
             </tr>
             
             <tr>
               <th>EMAILID</th>
              <td><%=rs.getString(8) %></td>
             </tr>
             
             <tr>
             <th>PASSWD</th> 
             <td><%=rs.getString(9) %></td>
             </tr>
             
             <tr>
             <th>PHONENO</th> 
             <td><%=rs.getLong(10) %></td>
             </tr>
             
              <tr>
             <th>ADDRESS</th> 
             <td><%=rs.getString(11) %></td>
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