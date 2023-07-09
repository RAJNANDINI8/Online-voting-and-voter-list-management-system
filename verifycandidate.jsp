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
   background: linear-gradient(to right,rgba(50, 176, 234, 0.473),rgb(242, 242, 242));
    background-size: cover;
    background-position: center;
  }
    h1 {
      color:rgb(6, 112, 169);
      text-align: center;
    }
    
    header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 10px 50px;
  
    display:flex;
    justify-content: space-between;
    align-items: center;
    z-index:99 ;
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
  .form-box h2{
    position: absolute;
    top: 2px;
    left: 40%;
    font-size: 2em;
    color: black;
    text-align: center;
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
  .navigation .btnLogin-popup:hover{
    background-color: rgb(15, 15, 15);
    color: rgb(253, 243, 243);
  }
  .wrapper{
    
    position: relative;
    width: 400px;
    height: 355px;
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
</style>
<body>
    <header>
        <h2 class="Logo">Evote</h2>
        <nav class="navigation">
         <button class="btnLogin-popup"  onclick="window.location.href = 'voterlogin.jsp';">Home</button>
        </nav>
      </header>
   
    <div class="wrapper">
        <span class="icon-close">
                <ion-icon name="close"></ion-icon>
        </span>

        <div class="form-box  login">
            <h2>Verify</h2>
            <form action="verifycode1" method=Post>
            <p> we already send a verification code to your email</p>
            <div class="input-box">
                <span class="icon">
                <ion-icon ></ion-icon></span>
                <input type="password" required name="authcode">
                <label >Enter CODE:</label>
            </div>
            <div class="remember-forgot">
            <button type="submit" class="btn" name=verify>Verify</button>
            </form>
        </div>

    </div>
 
</body>
</html>