<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/style.css">
     <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
     <%@ page import="java.sql.*" %>
    <style>
      @media screen and (max-width: 768px) {
          /* Adjust navigation for smaller screens */
          .nav-links {
              display: none;
              flex-direction: column;
          }
          .nav-links.show {
              display: flex;
          }

          /* Adjust vision content for smaller screens */
          .visioncontent {
              flex-direction: column;
          }

          /* Make the logo and navigation icon more responsive */
          .logo a {
              font-size: 24px;
          }
          .bx-menu {
              font-size: 28px;
          }
      }
      .animate-text {
  animation-iteration-count:1;
  animation: slideFromRight 2s ease;
  flex: 1;
  font-size: large;
  color: rgb(147, 154, 59);
  margin-left: 50px; /* Adjust this margin as needed */
}
  </style>
</head>
<body>
    <%@include file="header.jsp" %>
      <<br><br><br>
      <div class="visioncontent">
    <h2 style="text-align: center; font-family: cursive; font-size: 40px;">Our Vision</h2><br>
    <div style="display: flex; flex-wrap: wrap; align-items: center;">
        <img src="assets/img/vision3.jpg" alt="" style="max-width: 70%; height: auto; margin: 20px;border-radius: 200px;">
        <div class="animate-text" style="text-align: center; padding: 10px;">
            <p style="font-size: 18px; color: rgb(147, 154, 59);">Our vision is to be the preeminent national leader in the collection and distribution of donated medicines through:</p>
            <ul>
                <li>Establishment of a national drug donation system based on the success of Iowa?s Drug Donation Repository model.</li>
                <li>Demonstration of exemplary stewardship in the collection, inspection, distribution, and disposal of donated medicines.</li>
                <li>Collaboration with industry leaders, academia, legislative bodies, and regulatory stakeholders to establish national standards for donated medicines.</li>
                <li>Support of clinics, pharmacies, and other health care stakeholders in the delivery of safe, efficient, and effective pharmacy services for underserved populations.</li>
                <li>Provision of training, research, and evaluation opportunities to support ongoing innovation in charitable pharmacy services.</li>
            </ul>
        </div>
    </div>
</div>

    <br><br><br> <br><br> 
</body>
<%@include file="footer.jsp" %>
  <script src="script.js"></script>
</html>