<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>State Level Trust - Home</title>
    <link rel="stylesheet" href="assets/style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
     <style>
        .about-content h5 a {
          font-weight: 600;
          color: #060606;
          font-size: 24px;
        }

        .about-content h5 a:hover {
          color: #037ef3;
        }

        .about-icon i {
          font-size: 50px;
          color: #037ef3;
        }
        a{
            text-decoration: none;
        }
     </style>
  </head>
<body>
    <%@include file="neederheader.jsp" %>
    <div class="mySlides container1">
      <img src="assets/img/need.jpg" style="height:700px;
      width:100%;
      margin-left: 0px;">
      <div class="centered">
           <h3>Welcome <%
                        if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("name").toString());
                        }
                    %> To Our State Level Trust </h3><br>
            
            <h6>We are a diverse, caring community of donors and recipients, driven by the shared vision of making healthcare accessible to all through medicine donations.</h6>
      </div>
    </div>
    <!-- home block 2 -->
    <section class="about-section text-center pt-lg-5 pb-5">
        <div class="container pt-lg-5 pb-lg-5 pb-4">
            <h1 class="title-style text-center mb-5">Healthy Smiles <span>Everyday!</span></h1>
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                          <i class="fa-regular fa-rectangle-list" style="color:#3E8DA8;"></i>
                        </div>
                        <div class="about-content">
                             <h5 class="mb-3"><a>Medicine Panel</a></h5>
                             <p>"Welcome to the Needy People of Medicine Panel, where we gather to address the critical healthcare needs of our most vulnerable community members."</p>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-md-0 mt-3">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                          <i class="fa-solid fa-pills"  style="color:#3E8DA8;"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a>Pillbox</a></h5>
                            <p>"A monthly or weekly pillbox is a lifesaver for anyone juggling multiple medications. It simplifies the process of taking your prescribed pills."</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-lg-0 mt-3">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                          <i class="fa-solid fa-prescription-bottle-medical"  style="color:#3E8DA8;"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a>Pharmacy</a></h5>
                            <p>"I'm looking for a pharmacy that offers blister packaging for my medications. Can you confirm if your pharmacy provides this service?"</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-4">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                           <i class="fa-solid fa-language"  style="color:#3E8DA8;"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a>Instruction</a></h5>
                            <p>"It's important for the patient to have access to clear instructions, so could you please print the label in [desired language] for their convenience?".</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-4">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                          <i class="fa-solid fa-clock"  style="color:#3E8DA8;"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a>Take medicine Timely</a></h5>
                            <p>Taking medicine timely is crucial for managing your health effectively. Consistently adhering to your prescribed medication schedule ensures that your body receives the right treatment when it needs it the most.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-4">
                    <div class="about-single p-3">
                        <div class="about-icon mb-4">
                          <i class="fa-solid fa-mobile"  style="color:#3E8DA8;"></i>
                        </div>
                        <div class="about-content">
                            <h5 class="mb-3"><a>Call when need</a></h5>
                            <p>"When it comes to managing your medications and health, don't hesitate to call your pharmacist. They are your trusted resource for all things related to your prescriptions."</p>
                        </div>
                    </div>
                </div>
            </div>
           
        </div>
    </section>
    <!-- //home block 2 -->
  
<%@include file="footer.jsp" %>
</body>
</html>