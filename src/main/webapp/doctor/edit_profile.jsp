<%@page import="com.healthTrace.db.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.healthTrace.dao.DoctorDAO" %>
<%@ page import="com.healthTrace.entity.Doctor" %>
<%@ page import="java.util.List" %>
<%@ page import="com.healthTrace.entity.User" %>
<%@ page import="com.healthTrace.dao.AppointmentDAO" %>
<%@ page import="com.healthTrace.entity.Appointment" %>
<%@ page import="com.healthTrace.entity.Specialist" %>
<%@ page import="com.healthTrace.dao.SpecialistDAO" %>
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
	<link href="../assets/css/main.css" rel="stylesheet">
	<link href="../assets/css/utilities.css" rel="stylesheet">


	<title>Home Page | healthTrace</title>
	<%@include file="../component/allcss.jsp"%>


	<link href="../Dashassets/images/7zvDN2okWbny.png" rel="icon">
	<link href="../Dashassets/images/V9OAuGdBb0Qh.png" rel="apple-touch-icon">

	<link href="../Dashassets/css/503uKmQN8xls.css" rel="stylesheet">

	<link href="../Dashassets/css/per8hcNp7jdl.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../Dashassets/css/bnsLJI6BAg3h.css">
	<link rel="stylesheet" type="text/css" href="../Dashassets/css/jz3x9DhP6jJ7.css">

	<link href="../Dashassets/css/9NAoFREDLVA6.css" rel="stylesheet">
	<link href="../Dashassets/css/l4gqiphJ7KXZ.css" rel="stylesheet">


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


	<script async="" src="../Dashassets/js/0vgv07pFj0mD.js"></script><script src="../Dashassets/js/Mx6K2iHOd1T0.js"></script>

	<!-- customs css for this page -->
	<style>

		/* CSS */
		.button-10 {
			display: flex;
			flex-direction: column;
			align-items: center;
			padding: 6px 14px;
			font-family: -apple-system, BlinkMacSystemFont, 'Roboto', sans-serif;
			border-radius: 6px;
			border: none;

			color: #fff;
			background: linear-gradient(180deg, #4B91F7 0%, #367AF6 100%);
			background-origin: border-box;
			box-shadow: 0px 0.5px 1.5px rgba(54, 122, 246, 0.25), inset 0px 0.8px 0px -0.25px rgba(255, 255, 255, 0.2);
			user-select: none;
			-webkit-user-select: none;
			touch-action: manipulation;
		}

		.button-10:focus {
			box-shadow: inset 0px 0.8px 0px -0.25px rgba(255, 255, 255, 0.2), 0px 0.5px 1.5px rgba(54, 122, 246, 0.25), 0px 0px 0px 3.5px rgba(58, 108, 217, 0.5);
			outline: 0;
		}

	</style>

</head>
<body>


<%@include file="navbar.jsp"%>
<aside>
	<div id="sidebar" class="nav-collapse "style="border-radius: 10px;height: 600px;width: 210px;">

		<ul class="sidebar-menu" id="nav-accordion">
			<p class="centered"><a href="profile.html"><i class="fa-solid fa-user  fa-10x"style="color: ghostwhite"></i> </a></p>
			<c:if test="${not empty userObj}">
				<div class="centered" style="font-size: 24px;color: ghostwhite"> <!-- Adjust font size as needed -->
						${userObj.fullName}
				</div>
			</c:if>
			<li class="mt">
				<a class="active" href="index.jsp">
					<i class="fa fa-dashboard"></i>
					<span>Dashboard</span>
				</a>
			</li>
			</li>

			<li class="sub-menu">
				<a href="patient.jsp">
					<i class="fa fa-book"></i>
					<span>Appointments</span>
				</a>

			</li>



			<li class="sub-menu">
				<a href="chatroom.jsp">
					<i class="fa fa-comments-o"></i>
					<span>Chat Room</span>
				</a>

			</li>
		</ul>

	</div>
</aside>



<section id="main-content">


	<!-- col-2 --><div style="position: relative;margin: 30px;background-color: #afc8fa;padding: 10px">


	<!-- if "doctorObj" is empty means no one is login. -->

	<c:if test="${empty doctorObj }">

		<c:redirect url="../doctor_login.jsp"></c:redirect>

	</c:if>

	<!-- check is doctor is login or not -->


	<div class="container p-3">
		<div class="row">
			<div class="col-md-4">
				<div class="card my-card">

					<div class="card-body">
						<p class="fs-3 text-center text-success">Change Password</p>

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

						<!-- doctor change password form -->

						<form action="../doctorChangePassword" method="post">
							<div class="mb-3">
								<label class="form-label">Enter New Password</label> <input
									name="newPassword" type="password"
									placeholder="Enter new password" class="form-control"
									required="required">

							</div>
							<div class="mb-3">
								<label class="form-label">Enter Old Password</label> <input
									name="oldPassword" type="password"
									placeholder="Enter old password" class="form-control" required>
							</div>
							<input type="hidden" value="${doctorObj.id}" name="doctorId">

							<button type="submit" class="btn btn-success col-md-12">Change
								Password</button>
						</form>
						<!-- doctor change password form -->
					</div>
				</div>

			</div>

			<!-- doctor edit -->


			<!-- doctor edit -->

		</div>

	</div>


</body>
</html>