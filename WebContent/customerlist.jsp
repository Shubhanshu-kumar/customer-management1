<%@ page import="java.sql.*" %>
<%@ include file="menu.jsp" %>
<link href="css/style.css" rel="stylesheet">
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancejava2","root","SHUBHANSHU123KUMAR@");
String sql="select * from customerdetail";
Statement st=cn.createStatement();
ResultSet rst=st.executeQuery(sql);
%>

<table align="center" border="1" style="border-collapse: collapse; width: 100%; margin-top: 40px;">
   <tr>
     <th>First Name</th><th>Last Name</th><th>Address</th><th>Phone Number</th><th>Email Id</th><th>City</th><th>State</th>
   </tr>

<%
while(rst.next())
{
	%>
	<tr>
	<td><%=rst.getString(1) %></td>
	<td><%=rst.getString(2) %></td>
	<td><%=rst.getString(3) %></td>
	<td><%=rst.getString(4) %></td>
	<td><%=rst.getString(5) %></td>
	<td><%=rst.getString(6) %></td>
	<td><%=rst.getString(7) %></td>
	<%
}
%>  
</table>
