<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<style>
<%@ include file ="../css/index.css" %>
</style>
<title>Books manager application</title>
</head>
<body>
	<header>
		<%@ include file="menu.jsp"%>
	</header>


	<br>
	<section id="section1">
		<button id="discover" type="button" class="btn btn-dark"><b style="font-size: 30px;">Discover
			us</b></button>
	</section>


	<br>
	<s:if test="%{notifLogin == true}">
	<div id="notif" class="alert alert-success alert-dismissible fade show" role="alert">
  <strong>Hi ${email}</strong> you're loged in.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  	</button>
	</div>
	<s:set var="notifLogin" value="false"/>
 </s:if>

    	 ${notfiLogin}
<br>
	<section id="section2">
		
		<%@ include file="categories.jsp" %>
	
	</section>
	
	<br><br>

	<footer style="bottom: 0; position: relative; width: 100%;"
		class="page-footer font-small special-color-dark pt-4">
		<%@ include file="footer.jsp"%>
	</footer>
</body>
</html>