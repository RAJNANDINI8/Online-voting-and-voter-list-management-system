<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  
  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</head>
<style>
  
  @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
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
    background: url(https://www.coe.int/documents/14181903/15917751/logo-vote-2022.jpg/532b2399-6926-9fca-a87d-fd2d59f1ccb7?t=1654684762000) no-repeat;
    background-size: contain;
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
    right:210px;
    position: relative;
    width: 400px;
    height: 440px;
    background: transparent;
    border: 2px solid rgba(255, 255, 255, .5);
    border-radius: 20px;
    backdrop-filter: blur(20px);
    box-shadow: 0 0 30px rgba(0, 0, 0, .5);
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
    transform: scale(0);
    transition: transform .5s ease,height 0.2s ease;
  }
.wrapper.active-popup{
  transform: scale(1);

} 
  .wrapper.active{
    height: 1200px;

  }
  .wrapper .form-box{
    width: 100%;
    padding: 40px;
    
  }
  .wrapper .form-box.login{
    transition: transform .18s ease;
    transform: translateX(0);

  }
  .wrapper.active .form-box.login{
    transition: none;
    transform: translateX(-400px);

  }
  .wrapper .form-box.register{
   position: absolute;
   transition: none;
  transform: translateX(400px);
  }
  .wrapper.active .form-box.register{
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

   .form-box h2{
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
   .remember-forgot{
    font-size: 0.9em;
    color: black;
    font-weight: 500;
    margin: -15px 0 15px;
    display: flex;
    justify-content: space-between;

   }
   .remember-forgot label input{
    accent-color: black;
    margin-right:3px ;

   }
   .remember-forgot a{
    color: black;
    text-decoration: none;

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
   .login-register{
    font-size: 0.9em;
    color: black;
    text-align: center;
    font-weight: 500;
    margin: 25px 0 10px;
   }
   .login-register p a{
    color: black;
    text-decoration: none;
    font-weight: 600;
   }
   .login-register p a:hover{
    text-decoration: underline;
   }
   .container-box{
    background: #222;
    color: white;
    background-size: cover;
    background-position: cover;

    background-position: center;
    height: 100px;
    width: 100px;
    margin: auto;
   }
   .container-box  #textBox{
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    border: none;
    width: 100%;
    border: none;
    outline: none;
    background: transparent;
    color: white;
    padding: 10px;
   }
   .container-box #prevText{
    position: absolute;
    left: 50%;
    bottom: 30%;
    transform: translateX(-50%);
    width: 90%;
    font-size: 16px;
    text-align: center;
    text-shadow: 2px 2px 20px #000;
   }
   .container-box .upload-icon{
   
    width: 30px;
    bottom: 100px;
    left: 60%;
    transform: translateX(-50%);
    cursor: pointer;
   }
</style>
<body>

 <header>
    <h1 class="Logo">EVote</h1>
    <nav class="navigation">
      <a href="voterlogin.jsp">Home</a>
      <a href="about.jsp">About</a>
      <a href="adminlogin.jsp">Admin</a>
      <a href="candidatelogin.jsp">Candidate</a>
     
      <button class="btnLogin-popup">login</button>
    </nav>
  </header>
 
  <div class="wrapper">
<span class="icon-close">
  <ion-icon name="close"></ion-icon>
</span>

    <div class="form-box  login">
      <h2>Login</h2>
      <form action="servlet3"  method=Post>
      <div class="input-box">
          <span class="icon">
          <ion-icon ></ion-icon></span>
          <input type="number" required name="id">
          <label >Candidate Id:</label>
        </div>
        <div class="input-box">
          <span class="icon">
          <ion-icon ></ion-icon></span>
          <input type="email" required name="mail">
          <label >Email</label>
        </div>
        <div class="input-box">
          <span class="icon">
          <ion-icon ></ion-icon></span>
          <input type="password" required name="lock-closed">
          <label >Password</label>
        </div>
        <div class="remember-forgot">
          <label ><input type="checkbox">Remember me</label>
          <a href="#">Forgot Password?</a>

        </div>
        <button type="submit" class="btn">Login</button>
        <div class="login-register">
          <p>Don't have an account <a href="#" class="register-link">Register</a></p>
        </div>
      </form>
    </div>
   

    <div class="form-box  register">
      <h2>Registration</h2>
      <form action="User1" method="post" enctype="multipart/form-data">
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


        <div class="input-box">
          <span class="icon">
          <ion-icon ></ion-icon></span>
          <input type="text" required name="person1">
          <label >Father name</label>
        </div>

        <div class="input-box">
            <!-- <span class="icon">
              <ion-icon name="calendar-outline"></ion-icon></span> -->
            <input type="date" required name=DATE>
            <label ></label>
          </div>

        <div class="input-box">
            <span class="icon">
           <ion-icon ></ion-icon></span>
            <input type="text" required name="transgender-outline">
            <label >Gender</label>
          </div>
          
       

          <div class="input-box">
            <span class="icon">
            <ion-icon ></ion-icon></span>
            <input type="email" required name="mail">
            <label >Email</label>
          </div>


          <div class="input-box">
            <span class="icon">
                 <ion-icon ></ion-icon></span>
               <input type="number" required name="call-outline">
               <label >Phone no</label>
             </div>

          <div class="input-box">
            <span class="icon">
              <ion-icon ></ion-icon></span>
            <input type="text" required name="home-outline">
            <label >Address</label>
          </div>

          <div class="input-box">
            <span class="icon">
            <ion-icon></ion-icon></span>
            <input type="text" required  name="party">
            <label >Party Name and Logo</label>
          </div>
         
        
          <div class="container-box" id="imgBox">
            <div id="prevText"></div>
             <textarea id="textBox"  placeholder="Add Caption"></textarea>
          <input type="file" accept="image/*" name="image" id="file" style="display: none;"
             onchange="loadFile(event)" required>
            <label for="file">Upload Logo<img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT3CFd7rX9W5J-XDMOviVGIUfFdN_KPeDJWaou-G7A_ynVxEvRs"  class="upload-icon "> </label>
         
        
          </div>

          <div class="input-box">
            <!-- <span class="icon">
            <ion-icon name="person"></ion-icon></span> -->
            <input type="text" required name="position">
            <label >Position </label>
          </div>
   

        <div class="input-box">
          <span class="icon">
          <ion-icon ></ion-icon></span>
          <input type="password" required name="lock-closed">
          <label >Password</label>
        </div>

        <div class="remember-forgot">
          <label ><input type="checkbox">Remember me</label>
          <a href="#">I agree to the terms & conditions</a>
        </div>

        <button type="submit" value="upload" class="btn" >Register</button>
        <div class="login-register">
          <p>Already have an account <a href="#" class="login-link">Login</a></p>
        </div>
      </form>
    </div>

    
 
  </div>
  <script>
    const wrapper=document.querySelector('.wrapper');
    const loginLink=document.querySelector('.login-link');
    const registerLink=document.querySelector('.register-link');
    const btnPopup=document.querySelector('.btnLogin-popup');
    const iconclose=document.querySelector('.icon-close');

    var textBox=document.getElementById("textBox");
    var imgBox=document.getElementById("imgBox");

//  textBox.onkeyup=textBox.onkeypress=function(){
//     document.getElementById("prevText").innerHTML=this.value;
//  }

 var loadFile=function(event){
    imgBox.style.backgroundImage="url("+URL.createObjectURL(event.target.files[0])+")";
 }

    registerLink.addEventListener('click',()=>{
      wrapper.classList.add('active')
    });

    loginLink.addEventListener('click',()=>{
      wrapper.classList.remove('active')
    });

    btnPopup.addEventListener('click',()=>{
      wrapper.classList.add('active-popup')
    });

    iconclose.addEventListener('click',()=>{
      wrapper.classList.remove('active-popup')
    });
  </script>
</body>
</html>