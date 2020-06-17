<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
<%@
include file="../css/admin.css"%>
</style>
<meta charset="ISO-8859-1">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<script src="../js/ajax.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>MyBook - Registration page</title>


</head>
<body>
	<header>
		<%@ include file="menu.jsp"%>
	</header>
	<!-- Material form register -->
	<div class="general">
		<div class="vertical menu">
			<ul id="vert">
				<li><i class="fas fa-home"></i><a
					style="text-decoration: none; color: black;" href="home"> Home
						page</a></li>
				<li id="addUser"><i class="fas fa-user-plus"></i><a
					style="text-decoration: none; color: black;"> Add user</a></li>
				<li id="books"><i class="fas fa-book"></i><a
					style="text-decoration: none; color: black;" href="addBook"
					style="text-decoration: none;"> Add book</a></li>
				<li id="users"><i class="fas fa-users"></i><a
					style="text-decoration: none; color: black;" href="allUsers">
						Manage users</a></li>
				<li id="allBooks"><i class="fas fa-book"></i><a
					style="text-decoration: none; color: black;" href="allBooks">
						Manage books</a></li>
				<li id="allBooks"><i class="fas fa-terminal"></i></i><a
					style="text-decoration: none; color: black;" href="console">
						Console </a></li>
			</ul>
		</div>
		<div id="container" class="cardd menu">
			<!--Card content-->
			<div style="margin-left: 30%;" class="user card-body ">
				<h5 style="height:50px;"
					class="card-header special-color-dark white-text text-center py-4">
					<strong style="margin-top:1px;">Register a user</strong>
				</h5>
				<!-- Form -->
				<form method="post" class="text-center" style="color: #757575;"
					action="registerAction">

					<div class="form-row">
						<div class="col">
							<!-- First name -->
							<div class="md-form">
								<input name="user.nom" type="text"
									id="materialRegisterFormFirstName" class="form-control"
									value="${user.nom}"> <label
									for="materialRegisterFormFirstName">First name</label>
							</div>
						</div>
						<div class="col">
							<!-- Last name -->
							<div class="md-form">
								<input name="user.prenom" type="text"
									id="materialRegisterFormLastName" class="form-control"
									value="${user.prenom}"> <label
									for="materialRegisterFormLastName">Last name</label>
							</div>
						</div>
					</div>
					<span class="error">${nameError}</span>

					<!-- E-mail -->
					<div class="md-form mt-0">
						<input name="user.email" type="text"
							id="materialRegisterFormEmail" class="form-control"
							value="${user.email}"> <label
							for="materialRegisterFormEmail">E-mail</label>
					</div>
					<span class="error">${emailError}</span>
					<!-- Password -->
					<div class="form-row">
						<div class="col">
							<div class="md-form">
								<input name="user.mdp" type="password"
									id="materialRegisterFormPassword" class="form-control"
									aria-describedby="materialRegisterFormPasswordHelpBlock">
								<label for="materialRegisterFormPassword">Password</label>
							</div>
						</div>

						<!-- Phone number -->
						<div class="col">
							<div class="md-form">
								<input name="user.pseudo" type="text"
									id="materialRegisterFormPhone" class="form-control"
									aria-describedby="materialRegisterFormPhoneHelpBlock"
									value="${user.pseudo}"> <label
									for="materialRegisterFormPhone">Pseudo</label>
							</div>
						</div></div>
						<span class="error">${pseudoError}</span>

						<div class="form-row">
							<div class="col">

								<div id="date-picker-example"
									class="md-form md-outline input-with-post-icon datepicker">
									<input name="user.date_naissance" placeholder="Select date"
										type="text" id="example" class="form-control"
										value="${user.date_naissance}"> <i
										class="fas fa-calendar input-prefix" tabindex=0></i>
								</div>
							</div>
							

							<div style="margin-top: 23px;" class="col">
								<select name="user.role" class="browser-default custom-select">
									<s:if test="%{user.role != ''}">
										<option selected>${user.role}</option>
									</s:if>
									<s:else>
										<option selected>Select role</option>
									</s:else>
									<option value="user">User</option>
									<option value="admin">Admin</option>
								</select>
							</div>
							</div>
							<span class="error">${roleError}</span>
							<!-- Sign up button -->
							<button
								class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
								type="submit">Register</button>
				</form>
				<!-- Form -->

			</div>

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