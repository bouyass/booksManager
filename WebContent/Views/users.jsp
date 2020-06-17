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
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>PSEUDO</th>
                <th>DATE DE NAISSANCE</th>
                <th>R�LE</th>
                <th>EMAIL</th>
                <th>EDIT</th>
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
                <td>$320,800</td>
                <td>5421</td>
            </tr>
            <tr>
                <td>Garrett</td>
                <td>Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
                <td>8422</td>
            </tr>
            <tr>
                <td>Ashton</td>
                <td>Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
                <td>1562</td>
                <td>a.cox@datatables.net</td>
            </tr>
            <tr>
                <td>Cedric</td>
                <td>Kelly</td>
                <td>Senior Javascript Developer</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2012/03/29</td>
                <td>$433,060</td>
                <td>6224</td>
                <td>c.kelly@datatables.net</td>
            </tr>
            <tr>
                <td>Airi</td>
                <td>Satou</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>33</td>
                <td>2008/11/28</td>
                <td>$162,700</td>
                <td>5407</td>
                <td>a.satou@datatables.net</td>
            </tr>
            <tr>
                <td>Brielle</td>
                <td>Williamson</td>
                <td>Integration Specialist</td>
                <td>New York</td>
                <td>61</td>
                <td>2012/12/02</td>
                <td>$372,000</td>
                <td>4804</td>
                <td>b.williamson@datatables.net</td>
            </tr>
            <tr>
                <td>Herrod</td>
                <td>Chandler</td>
                <td>Sales Assistant</td>
                <td>San Francisco</td>
                <td>59</td>
                <td>2012/08/06</td>
                <td>$137,500</td>
                <td>9608</td>
                <td>h.chandler@datatables.net</td>
            </tr>
            <tr>
                <td>Rhona</td>
                <td>Davidson</td>
                <td>Integration Specialist</td>
                <td>Tokyo</td>
                <td>55</td>
                <td>2010/10/14</td>
                <td>$327,900</td>
                <td>6200</td>
                <td>r.davidson@datatables.net</td>
            </tr>
            <tr>
                <td>Colleen</td>
                <td>Hurst</td>
                <td>Javascript Developer</td>
                <td>San Francisco</td>
                <td>39</td>
                <td>2009/09/15</td>
                <td>$205,500</td>
                <td>2360</td>
                <td>c.hurst@datatables.net</td>
            </tr>
            <tr>
                <td>Sonya</td>
                <td>Frost</td>
                <td>Software Engineer</td>
                <td>Edinburgh</td>
                <td>23</td>
                <td>2008/12/13</td>
                <td>$103,600</td>
                <td>1667</td>
                <td>s.frost@datatables.net</td>
            </tr>
            <tr>
                <td>Jena</td>
                <td>Gaines</td>
                <td>Office Manager</td>
                <td>London</td>
                <td>30</td>
                <td>2008/12/19</td>
                <td>$90,560</td>
                <td>3814</td>
                <td>j.gaines@datatables.net</td>
            </tr>
            <tr>
                <td>Quinn</td>
                <td>Flynn</td>
                <td>Support Lead</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2013/03/03</td>
                <td>$342,000</td>
                <td>9497</td>
                <td>q.flynn@datatables.net</td>
            </tr>
            <tr>
                <td>Charde</td>
                <td>Marshall</td>
                <td>Regional Director</td>
                <td>San Francisco</td>
                <td>36</td>
                <td>2008/10/16</td>
                <td>$470,600</td>
                <td>6741</td>
                <td>c.marshall@datatables.net</td>
            </tr>
            <tr>
                <td>Haley</td>
                <td>Kennedy</td>
                <td>Senior Marketing Designer</td>
                <td>London</td>
                <td>43</td>
                <td>2012/12/18</td>
                <td>$313,500</td>
                <td>3597</td>
                <td>h.kennedy@datatables.net</td>
            </tr>
            <tr>
                <td>Tatyana</td>
                <td>Fitzpatrick</td>
                <td>Regional Director</td>
                <td>London</td>
                <td>19</td>
                <td>2010/03/17</td>
                <td>$385,750</td>
                <td>1965</td>
                <td>t.fitzpatrick@datatables.net</td>
            </tr>
            <tr>
                <td>Michael</td>
                <td>Silva</td>
                <td>Marketing Designer</td>
                <td>London</td>
                <td>66</td>
                <td>2012/11/27</td>
                <td>$198,500</td>
                <td>1581</td>
                <td>m.silva@datatables.net</td>
            </tr>
            <tr>
                <td>Paul</td>
                <td>Byrd</td>
                <td>Chief Financial Officer (CFO)</td>
                <td>New York</td>
                <td>64</td>
                <td>2010/06/09</td>
                <td>$725,000</td>
                <td>3059</td>
                <td>p.byrd@datatables.net</td>
            </tr>
            <tr>
                <td>Gloria</td>
                <td>Little</td>
                <td>Systems Administrator</td>
                <td>New York</td>
                <td>59</td>
                <td>2009/04/10</td>
                <td>$237,500</td>
                <td>1721</td>
                <td>g.little@datatables.net</td>
            </tr>
            <tr>
                <td>Bradley</td>
                <td>Greer</td>
                <td>Software Engineer</td>
                <td>London</td>
                <td>41</td>
                <td>2012/10/13</td>
                <td>$132,000</td>
                <td>2558</td>
                <td>b.greer@datatables.net</td>
            </tr>
            <tr>
                <td>Dai</td>
                <td>Rios</td>
                <td>Personnel Lead</td>
                <td>Edinburgh</td>
                <td>35</td>
                <td>2012/09/26</td>
                <td>$217,500</td>
                <td>2290</td>
                <td>d.rios@datatables.net</td>
            </tr>
            <tr>
                <td>Jenette</td>
                <td>Caldwell</td>
                <td>Development Lead</td>
                <td>New York</td>
                <td>30</td>
                <td>2011/09/03</td>
                <td>$345,000</td>
                <td>1937</td>
                <td>j.caldwell@datatables.net</td>
            </tr>
            <tr>
                <td>Yuri</td>
                <td>Berry</td>
                <td>Chief Marketing Officer (CMO)</td>
                <td>New York</td>
                <td>40</td>
                <td>2009/06/25</td>
                <td>$675,000</td>
                <td>6154</td>
                <td>y.berry@datatables.net</td>
            </tr>
            <tr>
                <td>Caesar</td>
                <td>Vance</td>
                <td>Pre-Sales Support</td>
                <td>New York</td>
                <td>21</td>
                <td>2011/12/12</td>
                <td>$106,450</td>
                <td>8330</td>
                <td>c.vance@datatables.net</td>
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