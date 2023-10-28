<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>State Level Trust - Contact</title>
    <link rel="stylesheet" href="assets/style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
     <style>
         #information_form {
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 10px;
            margin: 0 auto; 
            max-width: 500px;
          }
          #information_form label {
            font-weight: bold;
          }

          #information_form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
          }
     </style>
  </head>
    <%@page import="java.sql.*" %>
    <%@include file="var.jsp" %>
<body>
    <%@include file="adminheader.jsp" %>
    <br><br><br>
   <h1 style="text-align: center; margin-top: 20px ;margin-bottom: 20px;">Information</h1>
   <%
            if(request.getParameter("submit")!= null)
            {
                String name,email,phone,id,delivery_date,delivery_time;
                 name = request.getParameter("name");
                 phone = request.getParameter("phone");
                 id = request.getParameter("id");
                 delivery_date = request.getParameter("ddate");
                 delivery_time = request.getParameter("dtime");
                 email = request.getParameter("email");
                 
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("INSERT INTO deliver (name,phone,delivery_id,delivery_date,delivery_time,email) VALUES (?, ?, ?, ?, ?, ?)");
                            
                            mystatement.setString(1, name);
                            mystatement.setString(2, phone);
                            mystatement.setString(3, id );
                            mystatement.setString(4, delivery_date);
                            mystatement.setString(5, delivery_time);
                            mystatement.setString(6, email);
                            
                          
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<center><label>Information added successfully</label></center>");
                            }
                            
                        }catch(Exception e){
                            out.print("<label>"+"Error in query due to"+e.getMessage()+"</label>");
                        }
                    }catch(Exception e){
                        out.print("<label>"+"Error in Connection due to  "+e.getMessage()+"</label>");
                    }   

                }
               
            
        %>
  <form id="information_form" name="information_form" method="post">
     
              <label>Delivery Boy Name</label>
              <input type="text" class="form-control" id="first_name" name="name">
      
              <label>Mobile number</label>
              <input type="text" class="form-control" id="mobile_number" name="phone">
         
              <label>Delivery id</label>
              <input type="text" class="form-control" id="delivery_id" name="id">
          
              <label>Expected delivery date</label>
              <input type="date" class="form-control" id="delivery_date" name="ddate">
          
              <label>Expected delivery time</label>
              <input type="time" class="form-control" id="delivery_time" name="dtime">
          
              <label>State level trust email id</label>
              <input type="email" class="form-control" id="email" name="email">
         
         <input type="submit" class="btnn" name="submit" value="Submit">
  </form>
   <br><br>
<%@include file="footer.jsp" %>
</body>
</html>