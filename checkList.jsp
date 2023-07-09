<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>drop down list</title>


</head>
<style>
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: sans-serif;

  }
  body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
      background: url(https://i.pinimg.com/736x/49/10/75/491075eb15618319e0515e005a75bc36.jpg) no-repeat;
    background-size: cover;
    background-position: center;
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
    color: #111111;
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
  .navigation .btnLogin-popup:hover{
    background-color: rgb(15, 15, 15);
    color: rgb(253, 243, 243);
  }
  .wrapper{
    right: 20%;
    position: relative;
    width: 400px;
    height: 340px;
    background: transparent;
    border: 2px solid rgba(255, 255, 255, .5);
    border-radius: 20px;
    backdrop-filter: blur(20px);
    box-shadow: 0 0 30px rgba(0, 0, 0, .5);
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
  
    transition: transform .5s ease,height 0.2s ease;
  }

  .wrapper .form-box{
    width: 100%;
    padding: 40px; 
  }
  .wrapper .form-box.login{
    transition: transform .18s ease;
    transform: translateX(0);

  }

  .wrapper .icon-close{
    position: absolute;
    top: 0;
    right: 0;
    width: 45px;
    height: 45px;
    background: black;
    font-size: 2em;
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    border-bottom-left-radius:20px ;
    cursor: pointer;
    z-index: 1;
  }
  .label{
    position: absolute;
    top: 20px;
    color: #0c0c0c;
    font-size: 40px;
  }
  .submit{
    position: absolute;
    bottom: 50px;
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
 margin-left: 40px;
 transition:  .5s;
  }
  .submit:hover{
    background-color: rgb(15, 15, 15);
    color: rgb(253, 243, 243);
  }
 
 .election{
    position: relative;
    width: 100%;
    height: 50px;
    font-size: larger;
    border-bottom: 2px solid black;
    margin: 30px 0;
    background-color: #0ab7d1;

   }
   .election label{
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
   .election input:focus~label,
   .election input:valid~label{
top: -5px;
   }
   .election input{
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
  
   
</style>
<body>
<form class="wrapper"  action="result" method=Post>
  <label class="label" for="election">Select Election:</label>
  <select class="election" name="election">
  <option class="select">select</option>
   <%
   
   try{
	
	  
	    Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Online_Voting_System","root","Utkarsha@06");
	    Statement st=con.createStatement();
	    String query="select * from ELECTION_NAME";
	    
	    ResultSet rs=st.executeQuery(query);
	    
	    while(rs.next())
	    {
	    	%>
	    	<option><%=rs.getString("ELECTION_POSITION") %></option>
	    	<%
	    }
   }catch(Exception e){
	   
   }
   
   
   %>
  </select>
  <br><br>
  <input class="submit" type="submit" value="Submit">
</form>

</body>
</html>