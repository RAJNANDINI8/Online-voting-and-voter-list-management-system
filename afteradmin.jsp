<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blurred Background popUp </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
    body {
        margin: 0;
    min-height: 100vh;
   
    background: url(https://img.freepik.com/free-vector/network-mesh-wire-digital-technology-background_1017-27428.jpg?w=2000) no-repeat;
    background-size: cover;
    background-position: center;
    }

    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
        transition: filter 0.7s;
        left: 36%;
        position: relative;
        width: 396px;
        height: 484px;
        background: transparent;
        border: 2px solid rgba(255, 255, 255, .5);
        border-radius: 20px;
        /* backdrop-filter: blur(20px); */
        box-shadow: 0 0 30px rgba(0, 0, 0, .5);
      position:absolute;
      top:150px;
        transition: transform .5s ease,height 0.2s ease;
    }
	

   

    .btn {
      
        padding: 10px 20px;
        cursor: pointer;
        color: black;
        border-radius: 5px;
        font-size: 20px;
        background: transparent;
      border: 2px solid #0f0e0e;
      outline: none;
      border-radius: 6px;
      cursor: pointer;
      font-size: 1.1em;
      margin-top: 20px;
      transition: .5s;
    }
  
    .btn:hover {
        background-color: rgb(15, 15, 15);
      color: rgb(253, 243, 243);
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
    color: rgb(15, 15, 15);
    user-select: none;

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
 position: absolute;
 left: 1150px;
  }
  .navigation .btnLogin-popup:hover{
    background-color: rgb(15, 15, 15);
    color: rgb(253, 243, 243);
  }
  .navigation .btnLogin-popup1{
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
 position: absolute;
 left: 1300px;
  }
  .navigation .btnLogin-popup1:hover{
    background-color: rgb(15, 15, 15);
    color: rgb(253, 243, 243);
  }
 
 
</style>

<body> 
<header>
    <h2 class="Logo">Evote</h2>
    <nav class="navigation">
    <button class="btnLogin-popup" onclick="window.location.href = 'adminlogin.jsp';">Back</button>
     <button class="btnLogin-popup1" onclick="window.location.href = 'voterlogin.jsp';">Home</button>
    </nav>
</header>

    <div class="container">
       
        <button class="btn" onclick="window.location.href = 'AdmincheckList.jsp';">Check result</button>
        <button class="btn" onclick="window.location.href = 'addelection.jsp';">Add Election</button>
           <button class="btn" onclick="window.location.href = 'deleteElection.jsp';">Delete Election</button>
        <button class="btn" onclick="window.location.href = 'img1.jsp';">Candidate info</button>
        <button class="btn" onclick="window.location.href = 'displayvoter.jsp';">Voter info</button>
        <button class="btn" onclick="window.location.href = 'deletecandidate.jsp';">Delete Candidate</button>
        <button class="btn"  onclick="window.location.href = 'deletevoter.jsp';">Delete Voter</button>
        
    </div>  
</body>

</html>