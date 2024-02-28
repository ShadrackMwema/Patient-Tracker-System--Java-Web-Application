<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>healthTrace</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<%@include file="component/maincss.jsp"%>
	<%@include file="component/utilitiescss.jsp"%>
	<%@include file="component/utilitiescss.jsp"%>


	<!-- normalize.css -->
	<style>
		.card-body {
			padding: 20px; /* Adjust padding according to your design */
		}

		.text-center {
			text-align: center;
		}

		.text-success {
			color: #28a745; /* Change color to your desired success color */
		}

		.text-danger {
			color: #dc3545; /* Change color to your desired error color */
		}

		.fs-5 {
			font-size: 1.25rem; /* Adjust font size according to your design */
		}

		.form-label {
			margin-bottom: 0.5rem; /* Adjust margin bottom according to your design */
		}

		.form-control {
			display: block;
			width: 100%;
			padding: 0.375rem 0.75rem;
			font-size: 1rem; /* Adjust font size according to your design */
			line-height: 1.5;
			color: #495057;
			background-color: #fff;
			background-clip: padding-box;
			border: 1px solid #ced4da;
			border-radius: 0.25rem;
			transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
		}

		.btn {
			display: inline-block;
			font-weight: 400;
			text-align: center;
			white-space: nowrap;
			vertical-align: middle;
			user-select: none;
			border: 1px solid transparent;
			padding: 0.375rem 0.75rem;
			font-size: 1rem; /* Adjust font size according to your design */
			line-height: 1.5;
			border-radius: 0.25rem;
			transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
			border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
		}

		.my-bg-color {
			background-color: #007bff; /* Change to your desired background color */
			color: #fff; /* Change to your desired text color */
		}

		.text-decoration-none {
			text-decoration: none;
		}

	</style>
</head>
<body>


<div class="page-wrapper">
	<!-- header -->
	<header class="header">
		<%@include file="component/navbar.jsp"%>


		<div class="element-one">
			<img src="images/element-img-1.png" alt="">
		</div>



	</header>

		<div class="container">
			<div class="banner-content">
				<div class="card-body">
					<!-- <p class="fs-4 text-center">User Login</p> -->

					<!-- for message -->
					<!-- success message -->
					<c:if test="${not empty successMsg }">
						<p class="text-center text-success fs-5">${successMsg}</p>
						<c:remove var="successMsg" scope="session" />
					</c:if>

					<!-- error message -->
					<c:if test="${not empty errorMsg }">
						<p class="text-center text-danger fs-5">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<!-- end of message -->



					<!-- boostrap form -->
					<form action="userLogin" method="post">
						<div class="mb-3">
							<label class="form-label">Email address</label> <input
								name="email" type="email" placeholder="Enter Email"
								class="form-control">
							<div id="emailHelp" class="form-text">We'll never share
								your email with anyone else.</div>
						</div>
						<div class="mb-3">
							<label class="form-label">Password</label> <input
								name="password" type="password" placeholder="Enter password"
								class="form-control">
						</div>

						<button type="submit"
								class="btn col-md-12 text-white my-bg-color">Submit</button>
					</form>
					<br>Don't have an account? <a href="signup.jsp"
												  class="text-decoration-none">create one</a>
					<!-- end of boostrap form -->
				</div>

			</div>

		</div>



</div>








</body>
</html>
