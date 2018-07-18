<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<script>
	function goToContact() {
		window.location.href='<c:url value="/contactUs"></c:url>';
	}
</script>
<div class="container-2-3">
	<div style="max-width: 155px; width: 155px; text-align: justify; padding-right: 20px; margin-left: -10px; margin-right: 10px;">
		<img src="img/site-bg-small-vert.png"></img>
	</div>
	<div style="max-width: 450px; width: 450px; text-align: justify;">
		<span style="font-size: 24px; font-family:'Pacifico', cursive; color: #e7038b">Preschool</span><br>
		We aim to redefine a child's life with grace and confidence. We aim to impart education with befitting practices, to inculcate good working habits, 
		imbibe suitable social and cultural values. We work hard to lay the foundation for academic excellence, creative expression, 
		physical and emotional wellness and instill confidence in children to be responsible global citizens. Our ability-based learning program is committed to help all students become lifelong learners.<br><br>
		
		
		<span style="font-size: 24px; font-family:'Pacifico', cursive; color: #e7038b">After School</span><br>
		The best help for families! Little Steps after school program offers a well-rounded, enriching and a comprehensive After School Program for children in grades K-8. We arrange for your child’s pick up services from local schools.<br><br>
		
		<span style="font-size: 24px; font-family:'Pacifico', cursive; color: #e7038b">Summer Camp</span><br>
		Our summer camp programs offer children a great balance of academics, sports and learning new skills in a fun and nurtured the environment. Super summer fun and High- Quality learning experiences guaranteed!<br><br>
		
	</div>
	<div style="max-width: 450px; width: 450px; text-align: justify;">
	<span style="font-size: 24px; font-family:'Pacifico', cursive; color: #e7038b">Philosophy</span><br>
	<p>Little Steps is a bilingual Montessori preschool. Our children's daycare program will provide education and care for your greatest treasure. 
	We are grateful to be able to share the joys of childhood with you and your family. Preschools and day care centers are the start of a child's independent experience away from home. 
	Our aim for each child is to let them experience the adventure and excitement of learning and friendship every day. Each child has an inner drive to learn, not just in the academic sense, but  about their world. 
	The Montessori approach is often described as an "education for life". Welcome! We look forward to having your child at Little Steps.</p>
	<p>A wide of range of enrichments classes are offered. Classes in newer fields and workshops keep your child abreast of new developments in the field of learning and technology.
		At Little Steps, we strive to provide innovative extra curriculars, all under one roof. We make the effort so you don’t have to. Give your child the best platform to experience and explore in our popular extra curricular classes.
	Please contact your local center to find out which extracurricular activities are offered currently. Classes may be offered in sessions or may be ongoing for the entire school year.</p>
	</div>
	<div style="grid-column-start: 3;">
		<button value="" class="btn" onClick='goToContact()'>Contact Us</button>	
	</div>
</div>
