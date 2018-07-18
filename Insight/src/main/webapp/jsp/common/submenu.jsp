<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<div style="background-color: #ffffff;">
<table width="100%">
	<tr>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/home"></c:url>">Create User</a></td>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/userInfo"></c:url>">Manage User</a></td>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/home"></c:url>">Create Student</a></td>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/userInfo"></c:url>">Manage Student</a></td>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/admin"></c:url>">Create Grade</a></td>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/contactUs"></c:url>">Manage Grade</a></td>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/contactUs"></c:url>">Manage Attendance</a></td>
		<td style="width:187px;" class="menu-item"><a href="<c:url value="/contactUs"></c:url>">Reports</a></td>
		
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