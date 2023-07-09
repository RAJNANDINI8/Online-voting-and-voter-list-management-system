<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
  background:
		url(https://us.123rf.com/450wm/foxindustry/foxindustry1309/foxindustry130900013/22089109-blue-sky-abstract-background-vector-illustration.jpg)no-repeat;
	background-size: cover;
	background-position: center;
  }
   
    h3 {
      font-size: 18px;
      font-weight: bold;
      margin-top: 20px;
      margin-bottom: 5px;
    }
   .id{
    position: absolute;
    top: 200px;
    left: 40%;
   }
  
.name{
    position: absolute;
    top: 265px;
    left: 40%;
}
.father{
    position: absolute;
    top: 330px;
    left: 40%;
}
.date{
    display: inline-block;
    position: absolute;
    top: 395px;
    left: 40%;
}
.gender{

    position: absolute;
    top: 460px;
    left: 40%;
}

.party{
    position: absolute;
    top: 200px;
    left: 60%;
}
.position{
    position: absolute;
    top: 265px;
    left: 60%;
}
.email{
    position: absolute;
    top: 330px;
    left: 60%;
}
   .address{
    position: absolute;
    top: 395px;
    left: 60%;
   }
   /* .password{
    position: absolute;
    top: 400px;
    left: 40%;
} */
   .phone{
    position: absolute;
    top: 460px;
    left: 60%;
   }
   img {
        position: absolute;
            margin-top: 20px;
      border: 5px solid #ddd;
      border-radius: 4px;
      border-color: black;
      padding: 5px;
			float: left;
			margin-right: 20px;
            top: 180px;
            left: 180px;
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

<body>
<header>
    <h2 class="Logo">Evote</h2>
    <nav class="navigation">
     
     
     <button class="btnLogin-popup" onclick="window.location.href = 'voterlogin.jsp';">Home</button>
    </nav>
  </header>
	<div>
        <div class="id">
            <h3 >Candidate id :</h3>
			<c:out value="${book.candidate_id}" />
			
        </div>
	        
	<div class="name">

        <h3 >Candidate name :</h3>
        <c:out value="${book.candidate_name}" />
    
    </div>
		<div class="father">
            <h3>Father name:</h3>
			<c:out value="${book.father_name}" />
        </div>
		     
	<div class="party">
	<h3>Party Name :</h3> 
	 <c:out value="${book.partyname}" />

    </div>
	        
	<div class="date"><h3>Date Of Birth :</h3><c:out value="${book.DOB}" /></div>
	        
		<div class="gender">
            <h3>Gender :</h3>
			<c:out value="${book.GENDER}" />
			
        </div>
	       
		<div class="position">
            <h3>Candidate position :</h3>
			<c:out value="${book.POSITION}" />
			
        </div>
	       
		<div class="email">
            <h3>Email id :</h3>
			<c:out value="${book.EMAILID}" />
			
        </div>
<!-- 	        
	  <div class="password">
        <h3>password :</h3>
        <c:out value="${book.PASSWD}" />
      </div> -->
	        
		<div class="phone">
            <h3>Phone No:</h3>
			<c:out value="${book.PHONENO}" />
			
        </div>
 	       
		<div class="address">
            <h3>Candidate Address :</h3>
			<c:out value="${book.ADDRESS}" />
			
        </div>
			<img src="data:image/jpg;base64,${book.base64Image}" width="240"
			height="300" />
	</div>
</body>
</html>