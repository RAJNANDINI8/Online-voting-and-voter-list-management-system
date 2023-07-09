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
        background: url(https://img.freepik.com/premium-photo/scientific-molecule-background-with-flow-waves-medicine-science-technology-chemistry-wallpaper-banner-with-dna-molecules-geometric-dynamic-linear-waves-illustration_230610-1050.jpg?w=2000) no-repeat;
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
  p{
    font-size: 70px;
  }
  </style>
  <body>
      <header>
          <h2 class="Logo">Evote</h2>
          <nav class="navigation">
            <button class="btnLogin-popup" onclick="window.location.href = 'ADDVOTE.jsp';">Back</button>
              <button class="btnLogin-popup1" onclick="window.location.href = 'voterlogin.jsp';">Home</button>
          </nav>
      </header>
      <p>ALREADY  VOTED!!!!</p>
  </body>
  
</html>