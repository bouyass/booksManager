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
		<%@ include file="menu.jsp"%>
	</header>
	<!-- Material form register -->
	<div class="general">
		<div class="vertical menu">
			<ul id="vert">
				<li><i class="fas fa-home"></i><a style="text-decoration: none;color:black;" href="home"> Home page</a></li>
				<li id="addUser"><i
					class="fas fa-user-plus"></i><a  style="text-decoration: none;color:black;" href="addUser" > Add user</a></li>
				<li id="books"><i class="fas fa-book"></i><a  style="text-decoration: none;color:black;"  href="addBook"
					style="text-decoration: none;"> Add book</a></li>
				<li id="users"><i class="fas fa-users"></i><a  style="text-decoration: none;color:black;"  href="allUsers">
						Manage users</a></li>
				<li id="allBooks"><i class="fas fa-book"></i><a  style="text-decoration: none;color:black;"  href="allBooks"> Manage books</a></li>
				<li id="allBooks" ><i class="fas fa-terminal"></i></i><a  style="text-decoration: none;color:black;"  href="console"> Console </a></li>
			</ul>
		</div>
		<div id="container" style="overflow: scroll;" class="cardd menu">
			

<!-- Material form register -->
<div
	style="width: 700px; height: 100%; margin-left: 22%; margin-top: 3px;"
	class="addBookParent card">

	<h5 style="height: 20px;"
		class="card-header special-color-dark white-text text-center py-4">
		<strong>Add a book</strong>
	</h5>

	<!--Card content-->
	<div class="addBook card-body px-lg-5 pt-0">

		<!-- Form -->
		<form class="text-center" style="color: #757575;"
			action="addBookAction" method="post">

			<div class="form-row">
				<div class="col">
					<!-- First name -->
					<div class="md-form">
						<input type="text" id="materialRegisterFormFirstName"
							name="book.title" class="form-control"> <label
							for="materialRegisterFormFirstName">Title</label>
					</div>
				</div>
				<div class="col">
					<!-- Last name -->
					<div class="md-form">
						<input type="text" id="materialRegisterFormLastName"
							name="book.author" class="form-control"> <label
							for="materialRegisterFormLastName">Author</label>
					</div>
				</div>
			</div>
			<span class="error">${titleError}</span>
			<div class="form-row">
				<div class="col">
					<!-- First name -->
					<div id="date-picker-example"
						class="md-form md-outline input-with-post-icon datepicker">
						<input placeholder="Select date" name="book.date_sortie"
							type="text" id="example" class="form-control"> <label
							for="example">Realse date</label> <i
							class="fas fa-calendar input-prefix" tabindex=0></i>
					</div>
				</div>

				<div class="col">
					<br />
					<!-- Last name -->
					<select name="book.categorie" class="browser-default custom-select">
						<option selected>Categorie</option>
						<option value="Educational">Educational</option>
						<option value="action">Action & adventure</option>
						<option value="classic">Classic</option>
						<option value="Anthology">Anthology</option>
						<option value="Humour">Humour</option>
						<option value="Drama">drama</option>
						<option value="fantasy">Fantasy</option>
						<option value="horror">Horror</option>
						<option value="historical">Historical</option>
						<option value="romance">Romance</option>
						<option value="suspence">Suspense</option>
						<option value="crime">crime</option>
						<option value="fable">Fable</option>
						<option value="mythology">Mythology</option>
						<option value="comic">Comic</option>
						<option value="crime">crime</option>
						<option value="mystery">Mystery</option>
						<option value="poetry">poetry</option>
						<option value="reference">Reference</option>
					</select>
				</div>
			</div>

			<div class="form-row">
				<div class="col">
					<!-- Material input -->
					<div class="md-form">
						<input name="book.reference" type="text" id="form1"
							class="form-control"> <label for="form1">Reference</label>
					</div>
				</div>
				<div class="col">
					<!-- Material input -->
					<div class="md-form">
						<input id="numero" name="book.numero" type="number" min="0"
							id="form1" class="form-control"> <label for="form1">Number</label>
					</div>
				</div>
				<div class="col">
					<div class="md-form">
						<input id="numero" name="book.link" type="text" id="form1"
							class="form-control"> <label for="form1">Download
							link</label>
					</div>
				</div>
			</div>
			<span class="error">${numeroError}</span> <span class="error">${referenceError}</span>

			<div class="form-group">
				<label for="exampleFormControlTextarea2">Description</label>
				<textarea name="book.description" class="form-control rounded-0"
					placeholder="Add a brief description of the book in order to be able to cher"
					id="exampleFormControlTextarea2" rows="3"></textarea>
			</div>
			<span class="error">${descriptionError}</span>
			<!-- Sign up button -->
			<button style="position: relative;"
				class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
				type="submit">Add it!</button>

		</form>
		<!-- Form -->

	</div>

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