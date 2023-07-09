<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
      background: linear-gradient(to right,rgb(74, 164, 227),rgb(129, 207, 229));
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
  
  .Logo {
      flex: 1;
     
  }
  
  .navigation {
      flex: 1;
      display: flex;
      justify-content: center;
      align-items: center;
   
  }
  
   .btnLogin-popup{
   position: absolute;
   right: 45px;
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
      transition: .5s;
      
  }

  .btn{
   position: absolute;
   right: 210px;
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
      transition: .5s;
      
  }
  
   .btnLogin-popup:hover{
      background-color: rgb(15, 15, 15);
      color: rgb(253, 243, 243);
  }
  .btn:hover{
      background-color: rgb(15, 15, 15);
      color: rgb(253, 243, 243);
  }
  p{
    font-size: 60px;
  }
  </style>
  <body>
      <header>
          <h2 class="Logo">Evote</h2>
          <nav class="navigation">
              <button class="btnLogin-popup" onclick="window.location.href = 'voterlogin.jsp';">Home</button>
          </nav>
      </header>
      <p>Register successfully!!</p>
      <form  action ="servlet4" method=Post >
       <button type="submit" class="btn">next-></button>
     
      </form>
  </body>
  
</html>