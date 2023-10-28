<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>State Level Trust - Drug repository</title>
    <link rel="stylesheet" href="assets/style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
     <style>
         .req-and-cmnt-container{
        background-image: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url("assets/img/bb.jpeg.jpg");
        padding-top: 50px;
        padding-bottom: 50px;
        padding-left: 190px;
        padding-right: 50px;
      }
     </style>
  </head>
<body>
    <%@include file="header.jsp" %>
  
 <div class="homeimg" style="margin-top:5%;">
        <img src="assets/img/drugrepo1.jpg" alt="" >
        <div class="top-right"><h5 style="color:white; font-family: cursive;">A drug repository, also known as a medication repository. </h5>
            <h5 style="color:white; font-family: cursive;">It is a program that allows individuals or institutions to donate unused,</h5><h5 style="color:white; font-family: cursive;"> unexpired prescription medications to be redistributed to individuals</h5> <h5 style="color:white; font-family: cursive;">who are in need but may not have access to affordable medications.</h5></div>
    </div>
    <br>
      <div class="work">
        <h2 style="text-align: center;color: #3E8DA8;">How it Works</h2><hr style="width:40%;margin-left:29%;">
      <div class="icon-bar">
        <div class="icon">
            &#128176;
            <div class="icon-text">Donation</div>
        </div>
        <div class="icon">
            &#128269;
            <div class="icon-text">Inspection</div>
        </div>
        <div class="icon">
            &#127760;
            <div class="icon-text">Partnership</div>
        </div>
        <div class="icon">
            &#128228;
            <div class="icon-text">Distribution</div>
        </div>
    </div>
    </div>
    
    <div class="req-and-cmnt-container">
        <div class="req">
            <h2>Requirements of Patient<br> Eligibility:</h2>
            <br>
            <ul>
                <li>Disabled member and no able-bodied adult members.</li>
                <li>SC/ST households.</li>
                <li>Landless households.</li>
                <li>Low income group families.</li>
            </ul>
        </div>
        <div class="cmnt">
            <h2>Common treatment options:</h2><br>
            <ul>
                <li>Malaria</li>
                <li>Typhoid</li>
                <li>Dengue</li>
                <li>Tuberculosis</li>
                <li>Hepatitis</li>
                <li>Influenza</li>
            </ul>
        </div>
    </div>
  
  
<%@include file="footer.jsp" %>
</body>
</html>