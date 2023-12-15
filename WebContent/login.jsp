<link href='css/style.css' rel='stylesheet'>
<hr style='border: 2px dashed red'>
<form action='validate-login.jsp' method="post">
    <%
        String id=request.getParameter("uid");   
    %>
    
    <table class='login'>
       <tr>
         <td colspan="2">
         <div align=" center" style="height: 32px;color: white;font-size: 22px;background-color:#000FFF ">User Login Form</div>
         </td>
         </tr>
         <tr>
         <td class="logintd">Enter user Id</td>
         <td class="logintd">
         <input type='text' value='<%=id==null?"":id %>' id='uid' name='uid' class='tb' required >
         <span style='color: red ' id='euid'></span>
         </td>
         </tr>
         <tr>
           <td class='logintd'>Enter password</td>
           <td class='logintd'>
           <input type="password" id='pass' class='tb' name='pass'required><br>
           <span style='color: red' id='pass'></span>
           </td>
         </tr>  
         <tr>
         <td class='logintd' colspan="2" align="right">
         <button class='bt'> Login</button>
         </td>
         </tr>
    </table>
</form>