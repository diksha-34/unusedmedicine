<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="assets/style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>State Level Trust - Final step</title>
    <style>
         body {
            font-family: "Open Sans", sans-serif;
            line-height: 1.25;
            background-color: #f0f0f0;
          }
          hr
          {
            width: 100%;
          }
          p
          {
            text-align: center;
            color: black;
            /*font-weight: bold;*/
          }
          
          .left-div
          {
                  width: 50%;
                  display:inline-block;
          }

          .right-div
          {
                  float:right;
                  width: 50%;
                  display:inline-block;
          }
          .right-div-right
          {
              margin-top: 5%;
                  text-align: center;
          }
       
        .forgap{
            margin-bottom: 15%;
        }
        
         </style>
    <%@page import="java.sql.*" %>
    <%@include file="var.jsp" %>
</head>
<body>
    <%@include file="neederheader.jsp" %>
    <br><br><br><br><br><br>
    <center><h4>Confirm order details</h4></center><br>
    <hr>
    <%
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
            try{
                PreparedStatement mystatement = myConnection.prepareStatement("select * from deliver inner join cart where cart.status = 'confirm'");
                ResultSet myresult=mystatement.executeQuery();

                while(myresult.next()){
                  %>
                    

    <div class="left-div"><p><strong>Deliver Boy Name: </strong><%=myresult.getString(1)%> </p></div>
    <div class="right-div"><p><strong>Mobile Number: </strong><%=myresult.getString(2)%> </p></div>
    <div class="left-div"><p><strong>Delivery id: </strong><%=myresult.getString(3)%> </p></div>  
    
    <div class="right-div"><p><strong>Expected Delivery Date: </strong><%=myresult.getString(4)%></p></div> 
    <div class="left-div"><p><strong>Expected Delivery Time: </strong><%=myresult.getString(5)%></p></div> 

    <div class="right-div"><p><strong>Status: </strong><%=myresult.getString(15)%></p></div>
    <div class="right-div-right"><p><strong>Contact us with: </strong><%=myresult.getString(6)%></p></div>  

 
    <%break;}%>

  
        
    <%}
        catch(Exception e){
            out.print("<label>"+"Error in query due to"+e.getMessage()+"</label>");
        }
    }catch(Exception e){
        out.print("<label>"+"Error in Connection due to"+e.getMessage()+"</label>");
    } 
    %>
   
    <div class="forgap"></div>
    <%@include file="footer.jsp"%>
</body>
</html>