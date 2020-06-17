<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
<%@ include file="../css/admin.css"%>
</style>
<meta charset="ISO-8859-1">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<script src="../js/ajax.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>MyBook - Registration page</title>


</head>
<body>
	<header>
		<%@ include file="menu.jsp"%>-
	</header>
	<!-- Material form register -->
	<div class="general">
		<div class="vertical menu">
			<ul id="vert">
				<li><i class="fas fa-home"></i><a style="text-decoration: none;color:black;" href="home"> Home page</a></li>
				<li id="addUser" ><i
					class="fas fa-user-plus"></i><a> Add user</a></li>
				<li id="books" ><i class="fas fa-book"></i><a
					style="text-decoration: none;"> Add book</a></li>
				<li id="users" ><i class="fas fa-users"></i><a>
						Manage users</a></li>
				<li id="allBooks"><i class="fas fa-book"></i><a> Manage books</a></li>
				<li id="allBooks" ><i class="fas fa-terminal"></i><a href="console"> Console </a></li>
			</ul>
		</div>
		<div id="container" class="cardd menu">
			
		</div>
	</div>
	<!-- Material form register -->
	<br>
	<br />

	<footer style="bottom: 0; position: absolute; width: 100%;"
		class="page-footer font-small special-color-dark pt-4">
		<%@ include file="footer.jsp"%>
	</footer>
</body>


</body>
</html>