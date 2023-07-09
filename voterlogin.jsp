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
    background: url(https://ggapartners.com/wp-content/uploads/post/taking-club-elections-digital-with-online-voting/16909/2021/03/OnlineVotingInfoSheet_web_featured-img.svg) no-repeat;
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
    color: white;
    user-select: none;

  }
  .navigation a{
    position: relative;
    font-size: 1.1em;
    color: #ffffff;
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
    background: white;
    border-radius: 5px;
    transform-origin: right;
    transform: scaleX(0);
    transition: transform  0.5s;
  }
  
  header h1{
  color:white;
  }

  .navigation a:hover::after{
transform-origin: left;
transform: scaleX(1);
}
  .navigation .btnLogin-popup{
    width: 110px;
    height: 40px;
  
    background: transparent;
    border: 2px solid #ffffff;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.1em;
    color: white;
	font-weight: 500;
	margin-left: 40px;
    transition:  .5s;
  }
  .navigation .btnLogin-popup:hover{
    background-color: #4f9ec1;
    color: black;
  }
  .wrapper{
    right: 20%;
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
    height: 1000px;

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
    color: white;
    text-align: center;
   }
   .input-box{
    position: relative;
    width: 100%;
    height: 50px;
    border-bottom: 2px solid white;
    margin: 30px 0;

   }
   .input-box label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    font-size: 1em;
    color: white;
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
    color: white;
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
    color: white;
    font-weight: 500;
    margin: -15px 0 15px;
    display: flex;
    justify-content: space-between;

   }
   .remember-forgot label input{
    accent-color: white;
    margin-right:3px ;

   }
   .remember-forgot a{
    color: white;
    text-decoration: none;

   }
   .btn{
    width: 100%;
    height: 45px;
    background: white;
    border: none;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1em;
    font-weight: 500;
    color: black;

   }
   .login-register{
    font-size: 0.9em;
    color: white;
    text-align: center;
    font-weight: 500;
    margin: 25px 0 10px;
   }
   .login-register p a{
    color: white;
    text-decoration: none;
    font-weight: 600;
   }
   .login-register p a:hover{
    text-decoration: underline;
   }
]
</style>
<body>
  <header>
    <h1 class="Logo">EVote</h1>
    <nav class="navigation">
      <a href="voterlogin.jsp">Home</a>
      <a href="about.jsp">About</a>
      <a href="adminlogin.jsp">Admin</a>
      <a href="candidatelogin.jsp">Candidate</a>
     
      <button class="btnLogin-popup">Voter</button>
    </nav>
  </header>
  <div class="wrapper">
  <span class="icon-close">
  <ion-icon name="close"></ion-icon>
</span>

    <div class="form-box  login">
      <h2>Login</h2>
      <form action="servlet1" method=Post>
      <div class="input-box">
          <span class="icon">
          <ion-icon name="mail"></ion-icon></span>
          <input type="number" required name=vid>
          <label >Voter Id:</label>
        </div>
        
        <div class="input-box">
          <span class="icon">
          <ion-icon name="mail"></ion-icon></span>
          <input type="email" required name=email>
          <label >Email :</label>
        </div>
        <div class="input-box">
          <span class="icon">
          <ion-icon name="lock-closed"></ion-icon></span>
          <input type="password" required name=txtPwd>
          <label >Password :</label>
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
      <form action="User" method=Post>

        <div class="input-box">
          <span class="icon">
            <ion-icon ></ion-icon></span>
          <input type="text" required name=id>
          <label >Voter ID</label>
        </div>

        <div class="input-box">
          <span class="icon">
          
          <input type="text" required name=Name>
          <label >Voter Name</label>
        </div>
        
          <div class="input-box">
          <span class="icon">
         <ion-icon ></ion-icon></span>
          <input type="text" required name=fname>
          <label >Father Name</label>
        </div>

        <div class="input-box">
          <span class="icon">
          
          <input type="email" required name=email >
          <label >Email</label>
        </div>

        <div class="input-box">
          <input type="date" required name=date>
          <label ></label>
        </div>

        <div class="input-box">
          <span class="icon">
         <ion-icon ></ion-icon></span>
          <input type="text" required name=GENDER>
          <label >Gender</label>
        </div>
        
        <div class="input-box">
          <span class="icon">
         <ion-icon ></ion-icon></span>
          <input type="text" required name=WardNo>
          <label >Ward NO.</label>
        </div>
        
        <div class="input-box">
          <span class="icon">
         <ion-icon ></ion-icon></span>
          <input type="text" required name=phoneno>
          <label >Phone No.</label>
        </div>
        
                

        <div class="input-box">
          <span class="icon">
            <ion-icon ></ion-icon></span>
          <input type="text" required name=add>
          <label >Address</label>
        </div>

        <div class="input-box">
          <span class="icon">
          <ion-icon></ion-icon></span>
          <input type="password" required name=txtPwd>
          <label >Password</label>
        </div>

        <div class="remember-forgot">
          <label ><input type="checkbox">Remember me</label>
          <a href="#">I agree to the terms & conditions</a>

        </div>
        <button type="submit" class="btn">Register</button>
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