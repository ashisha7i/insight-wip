<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<h1>Login</h1>
 
<!-- /login?error=true -->
<c:if test="${param.error == 'true'}">
<div style="color:red;margin:10px 0px;">
   Login Failed!!!<br />
   Reason :
   <script>
   	console.log("${SPRING_SECURITY_LAST_EXCEPTION}");
   </script>
   <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
   <span>${SPRING_SECURITY_LAST_EXCEPTION.message}</span>
   </c:if>
     
</div>
</c:if>

<h3>Enter user name and password:</h3>
<form action="<c:url value="/perform_login"></c:url>" method="post" role="form">
   <table>
      <tr>
         <td>User ID:</td>
         <td><input type='text' name='username' value=''></td>
      </tr>
      <tr>
         <td>Password:</td>
         <td><input type='password' name='password' /></td>
      </tr>
      <tr>
         <td><input name="submit" type="submit" value="submit" /></td>
      </tr>
      <tr>
      	<td>&nbsp;</td>
      </tr>
      <tr>
      	<td><a href='<c:url value="/contactSysAdmin"></c:url>'>Forgot Password</a>
   </table>
</form>
 
<br>
<!-- Username/pass:
<ul>
  <li>dbuser1/123</li>
  <li>dbadmin1/123</li>
  <li>guest/guest123</li>
</ul>   -->
