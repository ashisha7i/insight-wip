<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> --%>
	<link href="https://fonts.googleapis.com/css?family=Roboto|Montserrat|Bonbon|Abel|Pacifico|Gugi" rel="stylesheet">
	<link rel="stylesheet" href="css/main.css">

	<!-- DHTMLX Components -->
	<!-- <link rel="stylesheet" href="http://cdn.dhtmlx.com/edge/dhtmlx.css" type="text/css"> --> 
	<link rel="stylesheet" href="./css/skins/web/dhtmlx.css" type="text/css"> 

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title><tiles:insertAttribute name="title" /></title>

	<script src="http://cdn.dhtmlx.com/edge/dhtmlx.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="height:100%;">
	<div class="main-container">
		<div class="div-header">
			<tiles:insertAttribute name="header" />
		</div>
		<div class="div-menu">
			<tiles:insertAttribute name="menu" />
		</div>
		<div class="div-submenu">
			<tiles:insertAttribute name="submenu" />
		</div>
		<div class="div-content">
			<tiles:insertAttribute name="content" />
		</div>
		<div class="div-footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>