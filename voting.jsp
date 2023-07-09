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
           /* background: linear-gradient(to right,rgb(50, 94, 224),rgb(81, 220, 224)) ; */
           /* background-image: url(https://media.gettyimages.com/id/501596793/vector/vote-on-triangular-pattern-mosaic-royalty-free-vector-art.jpg?s=612x612&w=gi&k=20&c=sdmlKIkQYI9JcdcXK-peM0uPp3GkCYUcWZoG1LwcttE=);
            background-size: cover; */
            background-color: rgb(134, 229, 230);
            background-position: center;
          }
          table {
            border-collapse: collapse;
          left: 20%;
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
            background-color: #f3ecec;
          }

          h1{
            position: absolute;
            top: 90px;
            color: black;
            left: 40%;
          }
    

  .form-box{
    position:absolute;
    width: 350px;
    height: 350px;
    background-color: black;
    right: 20%;
    background: transparent;
    border: 2px solid rgba(255, 255, 255, .5);
    border-radius: 20px;
    backdrop-filter: blur(20px);
    box-shadow: 0 0 30px rgba(0, 0, 0, .5);
    display: flex;
    justify-content: center;
    align-items: center;
  }


  .form-box h2{
    position: absolute;
    font-size: 2em;
    color: black;
    padding:22px;
    text-align: center;
    top: 2px;
   }
   .input-box{
    position: relative;
    width: 100%;
    height: 50px;
    border-bottom: 2px solid black;
    margin: 30px 0;
   }


   .input-box label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    font-size: 1em;
    color: black;
    font-weight: 500;
    pointer-events: none;
  transition: .5s;
   }

   .input-box input:focus~label,
   .input-box input:valid~label{
top: -5px;
   }
   .input-box input{
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    color: black;
    font-weight:600 ;
    padding: 0 35px 0 5px;
   }
   .input-box .icon{
    position: absolute;
    right: 8px;
    font-size: 1.2em;
    color: black;
    line-height: 57px;

   }
   .btn{
    width: 100%;
    height: 45px;
    background: black;
    border: none;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1em;
   font-weight: 500;
    color: white;
   }
          
        </style>
      </head>
      <body>
      
    
    
        <h1>Candidate information</h1>
        <table border="1">
          <tr>
          <th>CANDIDATE ID</th>
            <th>CANDIDATE NAME</th>
            
            
          </tr>
    
          <% Connection conn = null;
          Statement stmt = null; 
          Blob image=null;
          ResultSet rs=null; 
          try{ 
              Class.forName("com.mysql.jdbc.Driver");
          conn=DriverManager.getConnection("jdbc:mysql://localhost/Online_Voting_System?useSSL=false","root","Utkarsha@06");
          stmt = conn.createStatement(); 
          
      
          PreparedStatement prep_stmt;
            prep_stmt=conn.prepareStatement("select CANDID,CNAME from candidate");
           
            
            rs=prep_stmt.executeQuery();
          while(rs.next()){
              %>
              
          <tr>
           <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
           
         
          </tr>
    
          <% } } catch(Exception e){ e.printStackTrace(); } %>
        </table>
        <div class="form-box">
            <h2>Information counter</h2>
      
        <form action="#">
            <div class="input-box">
                <span class="icon">
                  <ion-icon ></ion-icon></span>
                <input type="text" required name="id-card-outline">
                <label >Candidate ID</label>
              </div>

         <div class="input-box">
          <span class="icon">
          <ion-icon></ion-icon></span>
          <input type="text" required  name="person">
          <label >Candidate Name</label>
        </div>
        
    

        <button type="submit" class="btn">Get info</button>
         </form>
      </div>


      </body>