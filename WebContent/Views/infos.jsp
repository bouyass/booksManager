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
		<div id="container" class="cardd menu">
			<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>

<div style="overflow:scroll; height:100%;">

<table id="users"  class="table table-striped table-bordered dt-responsive nowrap" style="width:100%;">
	<thead>
            <tr>
                <th>ID</th>
                <th>CATEGORIE</th>
                <th>NOMBRE DE TELECHARGEMENT</th>
                <th>NOMBRE DE LECTURE</th>
                <th>DERNIERE LECTURE</th>
                <th>DERNIER TELECHARGEMENT</th>
                <th>CONSULTER</th>
            </tr>
        </thead>
        <tbody>
        	<tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td><button type="button" class="btn btn-dark">Consulter</button></td>
            </tr>
        </tbody>

</table>
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