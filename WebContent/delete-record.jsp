<%@ page import="java.sql.*" %>
<%@ include file="menu.jsp" %>
<%
     
      String email=request.getParameter("email");
      
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancejava2","root","SHUBHANSHU123KUMAR@");
      String query="delete from customerdetail where email=?";
      PreparedStatement ps=cn.prepareStatement(query);
     
      ps.setString(1,email);
      int n= ps.executeUpdate();
      

%>
    
    
   
<div class="dv">
       <h2 align="center" style='color:magenta; font-size: 2vw;' >Customer Record Has Been Deleted..</h2>
</div>

