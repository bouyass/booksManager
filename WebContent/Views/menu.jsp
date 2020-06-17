<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="/struts-tags" prefix="s"%>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/css/mdb.min.css"
	rel="stylesheet">


<!-- JQuery -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/js/mdb.min.js"></script>
<nav class="navbar navbar-expand-lg navbar-dark special-color-dark">

	<!-- Navbar brand -->
	<a class="navbar-brand" href="home">MyBooks</a>

	<!-- Collapse button -->
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#basicExampleNav" aria-controls="basicExampleNav"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<!-- Collapsible content -->
	<div class="collapse navbar-collapse" id="basicExampleNav">

		<!-- Links -->
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">About us</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Links</a></li>
			<li class="nav-item"><a class="nav-link" href="../books/TP_sujet.pdf" target="_blank">Charter use</a></li>
			<!-- Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</a>
				<div class="dropdown-menu dropdown-primary"
					aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a> <a
						class="dropdown-item" href="#">Something else here</a>
				</div></li>

		</ul>
		
		
		<!-- Links -->

		<form class="form-inline">
			<div class="md-form my-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search"
					aria-label="Search">
			</div>
		</form>
	</div>
	
	<s:set name="Ses" value="session"/>
	

	<s:if test="%{#Ses.loged == null}">
		<li style="list-style: none; padding-left: 5px;" class="nav-item"><a
			href="login"><button id="lyes" class="btn btn-outline-success my-2 my-sm-0"
					type="submit">Log in</button></a></li>
	</s:if>
	
	<s:elseif test="%{#Ses.loged != null }">
		<li style="list-style: none; padding-left: 5px;" class="nav-item"><a
			href="logout"><button class="btn btn-outline-success my-2 my-sm-0"
					type="submit">Log out </button></a></li>
		<s:if test="%{#Ses.loged.role == 'admin'}">
			<li style="list-style: none;"><a href="console"><button style="width:190px;" class="btn btn-outline-success my-2 my-sm-0"><i class="fas fa-tools fa-1x text-white-50"></i> Admin Console</button></a></li>
		</s:if>
	</s:elseif>
</nav>


