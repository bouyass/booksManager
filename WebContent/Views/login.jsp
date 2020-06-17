<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<header>
		<%@ include file="menu.jsp"%>
	</header>

	<div class="loginContainer col-md-4"
		style="margin-left: 35%; padding-top: 50px;">

		<!-- Material form login -->
		<div class="card">

			<h5
				class="card-header special-color-dark white-text text-center py-4">
				<strong>Sign in</strong>
			</h5>

			<!--Card content-->
			<div class="card-body px-lg-5 pt-0">

				<!-- Form -->
				<form class="text-center" style="color: #757575;" method="post"
					action="userLoginAction">

					<!-- Email -->
					<div class="md-form">
						<input type="text" id="materialLoginFormEmail" name="email"
							class="form-control"> <label for="materialLoginFormEmail">Pseudo</label>
					</div>

					<!-- Password -->
					<div class="md-form">
						<input type="password" id="materialLoginFormPassword"
							class="form-control" name="password"> <label
							for="materialLoginFormPassword">Password</label>
					</div>

					<div class="d-flex justify-content-around">
						<div>
							<!-- Remember me -->
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="materialLoginFormRemember"> <label
									class="form-check-label" for="materialLoginFormRemember">Remember
									me</label>
							</div>
						</div>
						<div>
							<!-- Forgot password -->
							<a href="">Forgot password?</a>
						</div>
					</div>

					<!-- Sign in button -->
					<button style="border: 1px solid special-color-dark;" name="submit"
						class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
						type="submit">Sign in</button>
			
				
				 <s:if test="%{error == true}">
					<div id="notif"
						class="alert alert-danger alert-dismissible fade show"
						role="alert">
						<strong>Sorry </strong>connection refused.
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</s:if>		
			
		
		
			  
				


			



				</form>
				<!-- Form -->

			</div>

		</div>
		<!-- Material form login -->
	</div>

	<footer style="bottom: 0; position: absolute; width: 100%;"
		class="page-footer font-small special-color-dark pt-4">
		<%@ include file="footer.jsp"%>
	</footer>
</body>
</html>