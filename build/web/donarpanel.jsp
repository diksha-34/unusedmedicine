<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>State Level Trust - Home</title>
    <link rel="stylesheet" href="assets/style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
     <style>
  .teamcrds {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;/* Center the cards horizontally */
            margin-left: 0px;
            margin-bottom:3px;
        }

        .teamcrds > div {
            flex: 1;
            max-width: 200px; 
            margin: 10px;
            text-align: center;
        }

        .teamcrds img {
            height: 120px;
            width: 120px;
            border-radius: 50%;
            margin: 0 auto;
            margin-bottom: 5px; 
        }

        .card-text {
            color: whitesmoke;
        }

        @media (max-width: 768px) {
            .teamcrds {
                margin-left: 0; 
            }

            .teamcontent {
                margin-left: 0; 
                padding: 0px;
                
            }

            .teamcrds > div {
                flex: 1;
                max-width: 100%;
            }
        }
     </style>
  </head>
<body>
    <%@include file="donarheader.jsp" %>
    <div class="mySlides container1">
      <img src="assets/img/donate.jpg" style="height:700px;
      width:100%;
      margin-left: 0px;">
      <div class="centered" style="color:white;">
           <h3>Welcome <%
                        if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("name").toString());
                        }
                    %> To Our State Level Trust </h3><br>
            
            <h5>We are a diverse, caring community of donors and recipients, driven by the shared vision of making healthcare accessible to all through medicine donations.</h5>
      </div>
    </div>
   
                     <br><br><br><br>
    <div class="">
        <h1 style="font-family: cursive;text-align: center;color: rgb(16, 22, 19);">Meet The Donars</h1><hr style="width:40%;margin-left:29%;"><br><br>
    </div>
                     
    <div class="teamcontent">
        <div class="teamcrds">
          
            <div>
                
            <img src="assets/img/pep5.jpeg.jpg" alt="" style="height: 120px;width: 120px;border-radius: 50%;margin-left: 65px;margin-bottom: 15px;">
                  <p style="text-align: center;">Liliana Bednar<p>
            
            </div>
            <div>
                    <img src="assets/img/pep2.jpeg.jpg" alt="" style="height: 120px;width: 120px;border-radius: 50%;margin-left: 65px;margin-bottom: 15px;">
                    <p style="text-align: center;">Jake Klein</p>
                </div>
             
            <div>
                    <img src="assets/img/pep3.jpeg.jpg" alt="" style="height: 120px;width: 120px;border-radius: 50%;margin-left: 65px;margin-bottom: 15px;">
                    <p style="text-align: center;">Michael Rosmann</p>
                </div>
         
         
          
            <div>
                  <img src="assets/img/pep4.jpeg.jpg" alt="" style="height: 120px;width: 120px;border-radius: 50%;margin-left: 65px;margin-bottom: 15px;">
                  <p style="text-align: center;">Elizabeth Mensing</p>
                </div>
             
            <div>
                    <img src="assets/img/pep1.jpeg.jpg" alt="" style="height: 120px;width: 120px;border-radius: 50%;margin-left: 65px;margin-bottom: 15px;">
                    <p style="text-align: center;">Vanessa Cook</p>
                </div>
            <div>
                    <img src="assets/img/pep6.jpeg.jpg" alt="" style="height: 120px;width: 120px;border-radius: 50%;margin-left: 65px;margin-bottom: 15px;">
                    <p style="text-align: center;">Raymond Meister</p>
                </div>
     
          </div> 
    </div>
  
<%@include file="footer.jsp" %>
</body>
</html>