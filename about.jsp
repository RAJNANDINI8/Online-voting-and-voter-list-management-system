<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    /* CSS styles go here */

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
    background: url("https://img.freepik.com/free-vector/white-background-with-blue-tech-hexagon_1017-19366.jpg") no-repeat;
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
 .container{
    right: 0%;
    position: relative;
    width: 946px;
    height: 645px;
    background: transparent;
    border: 2px solid rgba(255, 255, 255, .5);
    border-radius: 20px;
    backdrop-filter: blur(20px);
    box-shadow: 0 0 30px rgba(0, 0, 0, .5);
    padding: 38px 36px;
    margin: 76px 83px;
 }
 
 h2{
       color:rgb(6, 112, 169);
 }
  </style>
  
<body>
    
    <header>
        <h2 class="Logo">Evote</h2>
        <nav class="navigation">
          <a href="voterlogin.jsp">Home</a>
          <a href="about.jsp">About</a>
          <a href="adminlogin.jsp">Admin</a>
          <a href="candidatelogin.jsp">Candidate</a>
         
         <button class="btnLogin-popup" onclick="window.location.href = 'voterlogin.jsp';">Voter</button>
        </nav>
      </header>
  <div class="container">
   
    <h1>About Online Voting System</h1>
   
    <p>
        <br><br>
        An online voting system is a digital platform that allows eligible voters to cast their vote in an election or referendum through the internet. These systems use various security measures to ensure that the voting process is safe, secure, and transparent.
        <br><br><br>

Some of the advantages of online voting systems are:
<br><br>
<ul>
    <p>1.Convenience: Online voting allows voters to cast their votes from anywhere, anytime, as long as they have an internet connection.
    </p>
    <br>
    <p>2.Accessibility: Online voting systems can be designed to be accessible to people with disabilities, making it easier for them to participate in the electoral process.
    </p>
    <br>
    <p>3.Efficiency: Online voting systems can reduce the time and resources required for traditional voting methods, such as paper ballots and manual vote counting.
    </p>
    <br>
    <p>4.Security: Online voting systems can use encryption and other security measures to ensure that votes are recorded and counted accurately and that the system is protected against fraud and hacking.
    </p>
    <br>
    <p>5.Transparency: Online voting systems can provide a high level of transparency, allowing voters to verify that their vote has been recorded and counted correctly.
    </p>
</ul>
<br><br><br>
Our team is made up of experienced professionals who are dedicated to providing the best possible service to our users. We are always available to answer any questions or concerns you may have about the voting process or our platform.
Thank you for choosing our online voting system. We look forward to serving you and helping to make democracy more accessible for everyone.



      </p>
  </div>
 
</body>
</html>