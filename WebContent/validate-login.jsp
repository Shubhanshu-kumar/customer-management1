<%@page import="java.sql.*"%>

<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancejava2","root","SHUBHANSHU123KUMAR@");
String query="select * from customermanagement where userid=? and password=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,request.getParameter("uid"));
ps.setString(2,request.getParameter("pass"));
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	
	response.sendRedirect("/customer-management1");
	return;
}

%>
<jsp:include page="login.jsp"></jsp:include>
<div class='dv1'>
  <h2 style="color: red">User id or password is incorrect</h2>
</div>