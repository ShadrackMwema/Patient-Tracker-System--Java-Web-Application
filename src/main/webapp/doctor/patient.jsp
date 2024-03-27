<%@page import="com.healthTrace.db.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.healthTrace.dao.DoctorDAO" %>
<%@ page import="com.healthTrace.entity.Doctor" %>
<%@ page import="java.util.List" %>
<%@ page import="com.healthTrace.entity.User" %>
<%@ page import="com.healthTrace.dao.AppointmentDAO" %>
<%@ page import="com.healthTrace.entity.Appointment" %>
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
			<div class="col-md-12">
				<div class="card my-card">
					<div class="card-body">
						<p class="text-center text-success fs-3">Appointment Details</p>

						<!-- message print -->
						<!-- for success msg -->
						<c:if test="${not empty successMsg }">
							<p class="text-center text-success fs-5">${successMsg}</p>
							<c:remove var="successMsg" scope="session" />
						</c:if>

						<!-- for error msg -->
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<!-- End of message print -->

						<!-- table for patient list -->

						<table class="table table-striped">
							<thead>
							<tr>
								<th scope="col" style="padding-right: 100px">Full Name</th>
								<th scope="col">Gender</th>
								<th scope="col">Age</th>
								<th scope="col">Appointment Date</th>
								<th scope="col">Email</th>
								<th scope="col">Phone</th>
								<th scope="col">Diseases</th>
								<th scope="col">Status</th>
								<th scope="col">Action</th>
							</tr>
							</thead>
							<tbody>

							<%
								Doctor doctor = (Doctor) session.getAttribute("doctorObj");

								//DoctorDAO docDAO = new DoctorDAO(DBConnection.getConn());
								AppointmentDAO appDAO = new AppointmentDAO(DBConnection.getConn());
								List<Appointment> list = appDAO.getAllAppointmentByLoginDoctor(doctor.getId());
								for (Appointment applist : list) {
							%>

							<tr>
								<th><%=applist.getFullName()%></th>
								<td><%=applist.getGender()%></td>
								<td><%=applist.getAge()%></td>
								<td><%=applist.getAppointmentDate()%></td>
								<td><%=applist.getEmail()%></td>
								<td><%=applist.getPhone()%></td>
								<td><%=applist.getDiseases()%></td>
								<td><%=applist.getStatus()%></td>

								<td>
									<%
										if ("Pending".equals(applist.getStatus())) {
									%> <a href="comment.jsp?id=<%=applist.getId()%>"
										  class="btn btn-success btn-sm">Comment / Prescription</a>
									<%
									} else {
									%>
									<a href="#!" class="btn btn-success btn-sm disabled"><i
											class="fa fa-comment"></i> Comment / Prescription</a>

									<%
										}
									%>


								</td>

							</tr>



							<%
								}
							%>


							</tbody>
						</table>

						<!-- end table for doctor list -->



					</div>
				</div>
			</div>

		</div>

	</div>


</body>
</html>