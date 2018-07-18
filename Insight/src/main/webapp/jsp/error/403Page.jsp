<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
<div style="padding:10px;">
Sorry ! You do not have access to this page.<br>Please try logging in as an 'Administrator'.<br><br>
</div>

<a href='<c:url value="/home"></c:url>'>Go Back</a>