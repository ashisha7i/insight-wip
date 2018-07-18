<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<div>
<table width="100%">
	<tr>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/home"></c:url>">Home</a></td>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/userInfo"></c:url>">Logout (dbuser1)</a></td>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/admin"></c:url>">Administration</a></td>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/contactUs"></c:url>">Contact Us</a></td>
		<td style="width:187px;" class="menu-item">
			<c:choose>
				<c:when test="${pageContext.request.userPrincipal != null}"> 
			  		<a href="<c:url value="/logout"></c:url>">Logout</a>
			  	</c:when>
			  	<c:otherwise>
			  		&nbsp;
			  	</c:otherwise>
		  	</c:choose>
		</td>
		<td align="right" style="color: blue; font-family: 'Gugi', cursive;">
			<c:if test="${not empty pageContext.request.userPrincipal}">
			${pageContext.request.userPrincipal.name}
		    <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
			        &nbsp;(Admin)
			    </c:if>
			</c:if>
		</td>
	</tr>
</table>
</div>
