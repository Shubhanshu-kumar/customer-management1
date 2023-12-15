<%@ page import="java.sql.*" %>
<%@ include file="menu.jsp" %>
<%
      String fname=request.getParameter("fname");
      String lname=request.getParameter("lname");
      String address=request.getParameter("address");
      String phone=request.getParameter("phone");
      String email=request.getParameter("email");
      String city=request.getParameter("city");
      String state=request.getParameter("state");
      
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancejava2","root","SHUBHANSHU123KUMAR@");
      String query="insert into customerdetail values(?,?,?,?,?,?,?)";
      PreparedStatement ps=cn.prepareStatement(query);
      ps.setString(1, fname);
      ps.setString(2, lname);
      ps.setString(3, address);
      ps.setString(4, phone);
      ps.setString(5, email);
      ps.setString(6, city);
      ps.setString(7, state);
      ps.executeUpdate();
      
%>
<div class="dv">
       <h2 align="center" style='color:magenta; font-size: 2vw;' >Customer Record Has Been Saved Successfully..</h2>
</div>