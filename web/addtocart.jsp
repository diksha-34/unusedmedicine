<%@ page import="java.sql.*" %>
<%@include file="var.jsp" %>
<%
    String email1=session.getAttribute("email").toString();
    String medicineid=request.getParameter("id");
    int quantity=1;
    int z=0;
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
        try{
            PreparedStatement mystatement = myConnection.prepareStatement("select * from cart where medicineid=? and email=?");
            mystatement.setString(1, medicineid);
            mystatement.setString(2, email1);
            ResultSet myresult=mystatement.executeQuery();
            while(myresult.next()){
                quantity=myresult.getInt(3);
                quantity=quantity+1;
                z=1;
            }
            if(z==1){
                mystatement.executeUpdate("update cart set quantity='"+quantity+"' where medicineid='"+medicineid+"' and email='"+email1+"'");
                response.sendRedirect("need.jsp?msg=exist");
            }
            if(z==0){
                PreparedStatement mystatement1 = myConnection.prepareStatement("insert into cart(email, medicineid, quantity) values(?, ?, ?)");
                mystatement1.setString(1, email1);
                mystatement1.setString(2, medicineid);
                mystatement1.setInt(3, quantity);
                mystatement1.executeUpdate();
                response.sendRedirect("need.jsp?msg=added");
            }
            
            
        }catch(Exception e){
           response.sendRedirect("need.jsp?msg=invalid");
        }
        
    }catch(Exception e){
        out.print(e);
    }
%>