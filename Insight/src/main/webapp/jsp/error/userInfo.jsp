<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>     
       
      <h2>User Info Page</h2>
      <h3>Welcome : <span>${pageContext.request.remoteUser}</span></h3>
      <b>This is protected page!</b>  
       
      <br/><br/>
      <c:if test="${userInfo != null}">
      <div>${userInfo}</div>
      </c:if>
