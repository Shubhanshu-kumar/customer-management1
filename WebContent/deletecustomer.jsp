<%@  include file="menu.jsp" %>
<link href="css/style1.css" rel="stylesheet">
<form action="delete-record.jsp" method="post">
  <table class="ta">
    
    <tr>
      <td class="la">Enter Email-Id</td>
      <td><input type="text" name="email" class="tb"  required></td>
    </tr>
       <tr>
      <td colspan="2" align="right">
        <button class="bt">Delete Record</button>
      </td>
    </tr>
  </table>
</form>