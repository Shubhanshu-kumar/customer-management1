<%@  include file="menu.jsp" %>

<form action="save-record.jsp" method="post">
  <table class="ta">
    
    <tr>
      <td class="la">Enter First Name </td>
      <td><input type="text" name="fname" class="tb"  required></td>
    </tr>
    <tr>
      <td class="la">Enter Last Name </td>
      <td><input type="text" name="lname" class="tb"  required></td>
    </tr>
    <tr>
      <td class="la">Enter Address </td>
      <td><input type="text" name="address" class="tb"  required></td>
    </tr>
    <tr>
      <td class="la">Enter Phone Number </td>
      <td><input type="text" name="phone" class="tb"  required></td>
    </tr>
    <tr>
      <td class="la">Enter Email Id </td>
      <td><input type="text" name="email" class="tb"  required></td>
    </tr>
    <tr>
      <td class="la">Enter City</td>
      <td><input type="text" name="city" class="tb"  required></td>
    </tr>
    <tr>
      <td class="la">Enter State </td>
      <td><input type="text" name="state" class="tb"  required></td>
    </tr>
    <tr>
      <td colspan="2" align="right">
        <button class="bt">Save Record</button>
      </td>
    </tr>
  </table>
</form>