<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		.Signin{
			padding-top: 40px;

		}
		.button {
			margin-top: 10px;
			display: flex;
			align-items: center;
			justify-content: center;
			padding: 10px 40px;

			position: relative;
			overflow: hidden;
			border-radius: 10rem;
			transition: all 0.02s;
			font-weight: bold;
			color: rgb(37, 37, 37);
			z-index: 0;
			box-shadow: 0 0px 7px -5px rgba(0, 0, 0, 0.5);
			margin: auto; /* Add this line to horizontally center the button */
		}


		.button:hover {
			background: rgb(193, 228, 248);
			color: rgb(33, 0, 85);
		}

		.button:active {
			transform: scale(0.97);
		}

		.hoverEffect {
			position: absolute;
			bottom: 0;
			top: 0;
			left: 0;
			right: 0;
			display: flex;
			align-items: center;
			justify-content: center;
			z-index: 1;
		}

		.hoverEffect div {
			background: rgb(222,0,75);
			background: linear-gradient(90deg, rgba(222,0,75,1) 0%, rgba(191,70,255,1) 49%, rgba(0,212,255,1) 100%);
			border-radius: 40rem;
			width: 10rem;
			height: 10rem;
			transition: 0.4s;
			filter: blur(20px);
			animation: effect infinite 3s linear;
			opacity: 0.5;
		}

		.button:hover .hoverEffect div {
			width: 8rem;
			height: 8rem;
		}

		@keyframes effect {

			0% {
				transform: rotate(0deg);
			}

			100% {
				transform: rotate(360deg);
			}
		}

		heading{
			color: #fff;
			font-size: 2.3em;
			justify-content: center;
			display: flex;
			margin: 60px;
			font-weight: bold;
			cursor: pointer;
			transition: .5s ease-in-out;
		}
		.card-body {
			background: linear-gradient(90deg, #296cf5, #53cae3);
			position: relative;
			height: 450px;
			width: 380px;
			box-shadow: 0px 0px 24px #5C5696;
			padding: 30px;
			margin-bottom: 20px;
			border-radius: 10px;
			/* Adjust padding according to your design */
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
			background-color: #647272; /* Change to your desired background color */
			color: #0c0c0c; /* Change to your desired text color */
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





		<div class="container">

			<div class="d-flex justify-content-center">
				<div class="card-body">
					<!-- <p class="fs-4 text-center">User Login</p> -->
					<h1 class="heading"> Welcome Back! </h1>
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
						<div class="Signin"><button class="button">
							Sign in
							<div class="hoverEffect">
								<div>
								</div>
							</div></button></div>


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
