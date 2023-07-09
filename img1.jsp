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
        top: 220px;
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
            prep_stmt=conn.prepareStatement("select candidate_id,candidate_name from candidate where candidate_name != 'NOTA'");
           
            
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
      
        <form action="GetBookServlet" method="get">
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