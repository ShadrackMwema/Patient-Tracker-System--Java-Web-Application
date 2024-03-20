<%@page import="com.healthTrace.db.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- for jstl tag -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- end of jstl tag -->

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>


	<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0 ">

<style>
	/* CSS */
	.button-73 {
		appearance: none;
		background-color: #FFFFFF;
		border-radius: 40em;
		border-style: none;
		box-shadow: #ADCFFF 0 -12px 6px inset;
		box-sizing: border-box;
		color: #000000;
		cursor: pointer;
		display: inline-block;
		font-family: -apple-system,sans-serif;
		font-size: 1.2rem;
		font-weight: 700;
		letter-spacing: -.24px;
		margin: 0;
		outline: none;
		padding: 1rem 1.3rem;
		quotes: auto;
		text-align: center;
		text-decoration: none;
		transition: all .15s;
		user-select: none;
		-webkit-user-select: none;
		touch-action: manipulation;
	}

	.button-73:hover {
		background-color: #ced9f5;
		box-shadow: #53cae3 0 -6px 8px inset;
		transform: scale(1.125);
	}

	.button-73:active {
		transform: scale(1.025);
	}

	@media (min-width: 768px) {
		.button-73 {
			font-size: 1.5rem;
			padding: .75rem 2rem;
		}
	}
</style>

	<link href="Dashassets/images/7zvDN2okWbny.png" rel="icon">
	<link href="Dashassets/images/V9OAuGdBb0Qh.png" rel="apple-touch-icon">

	<link href="Dashassets/css/503uKmQN8xls.css" rel="stylesheet">

	<link href="Dashassets/css/per8hcNp7jdl.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="Dashassets/css/bnsLJI6BAg3h.css">
	<link rel="stylesheet" type="text/css" href="Dashassets/css/jz3x9DhP6jJ7.css">

	<link href="Dashassets/css/9NAoFREDLVA6.css" rel="stylesheet">
	<link href="Dashassets/css/l4gqiphJ7KXZ.css" rel="stylesheet">


	<!-- Boostrap CSS -->
	<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
			crossorigin="anonymous">
	<!-- End Boostrap CSS -->

	<!-- Font awesome css -->
	<link rel="stylesheet"
		  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
		  integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
		  crossorigin="anonymous" referrerpolicy="no-referrer" />
	<!-- End Font awesome css -->

	<!--font awesome css-->
	<link rel="stylesheet"
		  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- Boostrap JS -->
	<%--<script--%>
	<%--		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
	<%--		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
	<%--		crossorigin="anonymous"></script>--%>


	<script async="" src="Dashassets/js/0vgv07pFj0mD.js"></script><script src="Dashassets/js/Mx6K2iHOd1T0.js"></script>

	<!-- customs css for this page -->


	<title>Home Page | healthTrace</title>
<%@include file="component/allcss.jsp"%>


<!-- customs css for this page -->
<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
	/*box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);*/
}
</style>
<!-- end of customs css for this page -->
	<link href="assets/css/main.css" rel="stylesheet">
	<link href="assets/css/utilities.css" rel="stylesheet">
</head>
<body>


	<div class = "home">

		<%@include file="component/navbar.jsp"%>

		<div class="banner">


			<div class="container">
				<div class="banner-content">
					<div class="banner-left">
						<div class="content-wrapper">
							<h1 class="banner-title">Virtual healthcare <br> for you</h1>
							<p class="text text-white">healthTrace provides progressive, and affordable healthcare, accessible on mobile and onnline for everyone</p>
							<!-- HTML !-->
							<button class="button-73" role="button"><a href="user_appointment.jsp"style="color: black;text-decoration: none">Consult Today</a></button>


						</div>
					</div>

					<div class = "banner-right d-flex align-items-center justify-content-end">
						<img src = "assets/images/banner.png" alt = "">
					</div>
				</div>
			</div>
		</div>
		<!-- footer -->

		<!-- end footer -->
	</div>






</body>
</html>