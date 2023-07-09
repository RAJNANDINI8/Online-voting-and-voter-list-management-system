<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Trailer Popup</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
    body {
        margin: 0;
        box-sizing: border-box;
        font-family: sans-serif;
        width: 100%;
        display: flex;
        justify-content: center;
        height: 100vh;
        align-items: center;
         background-color: rgb(226 249 255);
    }

    .main-container {
        /* max-width: 550px; */
        padding: 10px;
    }

    .main-container img {
        /* max-width: 100%;  */
        height: 70vh;
       width: 100%;
        margin-bottom: 15px;
        border: 10px;
    }

    .main-container h1 {
        color: black;
        font-weight: 500;

    }

    .main-container p {
        color: black;
        margin: 15px 0 solid black;
    }

    .btn {
        background-color: white;
        border:2px solid black;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 5px;

    }

    .btn:hover {
        background-color: rgb(93, 170, 191);
    }

    .trailer-container {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: black;
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        opacity: 1;
        transition: opacity 0.7s;
    }
    .active.trailer-container{
        visibility: hidden;
        opacity: 0;
    }

    .trailer-container video {
        position: relative;
        max-width: 900px;
        outline: none;

    }

    @media(max-width:991px) {
        .trailer-container video {
            max-width: 90%;
        }
    }
    .close-icon{
        position: absolute;
        top: 30px;
        right: 30px;
        color: white;
        cursor: pointer;
    }
    .close-icon:hover{
        color: orange;
    }

</style>

<body>

    <div class="main-container">

        <img src="https://static.vecteezy.com/system/resources/previews/011/263/901/original/vote-voting-and-election-concept-on-virtual-screen-polling-ballot-online-elections-electronic-voting-technology-e-ballot-check-mark-closeup-finger-about-to-press-a-button-illustration-vector.jpg" alt="">
        <h1>For more information</h1>
        <p>An online voting system is a digital platform that allows voters to cast their ballots remotely over the internet. These systems are designed to provide a more convenient and accessible voting experience for citizens, as they can vote from the comfort of their own homes or any location with an internet connection.Online voting systems typically require voters to register and authenticate their identities using secure login credentials, such as a username and password. Once authenticated, voters can access the ballot and submit their choices through the online interface and Check the result. </p>
        
        <button class="btn">Watch now</button>
    </div>
    
    <div class="trailer-container active">
        <video src="./guidance.mp4" controls></video>
        <i class="fas fa-times fa-2x close-icon"></i>
    </div>
    
    <script>
      let btnE1 = document.querySelector(".btn");
      let closeIconE1=document.querySelector(".close-icon");
      let trailerContainerE1=document.querySelector(".trailer-container");
      let videoE1=document.querySelector("video")

      btnE1.addEventListener("click",()=>{
        trailerContainerE1.classList.remove("active");
      });

      closeIconE1.addEventListener("click",()=>{
        trailerContainerE1.classList.add("active");
        videoE1.pause();
        videoE1.currentTime=0;
      });
    </script>
</body>

</html>