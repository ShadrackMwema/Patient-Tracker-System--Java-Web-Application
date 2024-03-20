<%@page import="com.healthTrace.db.DBConnection"%>
<%@page import="com.healthTrace.dao.DoctorDAO"%>
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
<title>Admin page</title>
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


	<script async="" src="Dashassets/js/0vgv07pFj0mD.js"></script><script src="Dashassets/js/Mx6K2iHOd1T0.js"></script>


<!-- customs css for this page -->
<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px #b4fafa;
	/*box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);*/
}
.my-card {
	height: 150px; /* Adjust the height of the boxes */
	margin-bottom: 20px; /* Increase the margin between boxes */
	padding: 20px; /* Add padding to the boxes */
}

</style>
<!-- end of customs css for this page -->



</head>
<body>
	<%@include file="navbar.jsp"%>

	<!-- adminObj session maintain if "adminObj" empty than go and login first...-->
	<!-- no one can access admin dashboard without login as admin-->
	<c:if test="${empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>



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

		<!-- create connection with db and others -->
		<%
		DoctorDAO docDAO = new DoctorDAO(DBConnection.getConn());
		int totalNumberOfDoctor = docDAO.countTotalDoctor();
		int totalNumberOfUser = docDAO.countTotalUser();
		int totalNumberOfAppointment = docDAO.countTotalAppointment();
		int totalNumberOfSpecialist = docDAO.countTotalSpecialist();
		%>
	<aside>
		<div id="sidebar" class="nav-collapse "style="border-radius: 10px;height: 600px;width: 210px;">

			<ul class="sidebar-menu" id="nav-accordion">
				<p class="centered"><a href="profile.html"><i class="fa-solid fa-user  fa-10x"style="color: ghostwhite"></i> </a></p>
				<h5 class="centered">Admin</h5>
				<li class="mt">
					<a class="active" href="index.jsp">
						<i class="fa fa-dashboard"></i>
						<span>Dashboard</span>
					</a>
				</li>
				</li>
				<li class="sub-menu">
					<a href="view_doctor.jsp">
						<i class="fa fa-users"></i>
						<span>Doctors</span>
					</a></li>
				<li class="sub-menu">
					<a href="patient.jsp">
						<i class="fa fa-book"></i>
						<span>Appointments</span>
					</a>

				</li>



				<li class="sub-menu">
					<a href="specialist.jsp">
						<i class="fa fa-star-half-empty"></i>
						<span>Specialists</span>
					</a>

				</li>
			</ul>

		</div>
	</aside>



	<section id="main-content">
		<p class="text-center text-success fs-3">Admin Dashboard</p>


		<section class="wrapper">
			<div class="row">

				<!-- Doctors -->
				<div class="col-xl-3 col-md-6 mb-4">
					<a href="view_doctor.jsp" style="text-decoration: none; color: inherit;">

					<div class="card border-left-primary shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
										Doctors</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">Total Number:</div><%= totalNumberOfDoctor %>
								</div>
								<div class="col-auto">
									<i class="fa-solid fa-user-doctor fa-7x"></i>
								</div>
							</div>
						</div>
					</div>
					</a>
				</div>

				<!-- Patients -->
				<div class="col-xl-3 col-md-6 mb-4">
					<a href="patient.jsp" style="text-decoration: none; color: inherit;">

					<div class="card border-left-success shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="text-xs font-weight-bold text-success text-uppercase mb-1">
										Patients/Users</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">Total Number:</div><%= totalNumberOfUser %>

								</div>
								<div class="col-auto">
									<i class="fa-solid fa-users fa-7x"></i>
								</div>
							</div>
						</div>
					</div>
					</a>
				</div>

				<!-- APPOINTMENT -->
				<div class="col-xl-3 col-md-6 mb-4">

					<div class="card border-left-info shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="text-xs font-weight-bold text-info text-uppercase mb-1">Appointments
									</div>
									<div class="row no-gutters align-items-center">
										<div class="col-auto">
											<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">Total:</div><%= totalNumberOfAppointment %>
										</div>
										<div class="col">

										</div>
									</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-clipboard-list fa-7x "></i>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Specialists -->
				<div class="col-xl-3 col-md-6 mb-4"data-bs-toggle="modal"
					 data-bs-target="#exampleModal">

					<div class="card border-left-warning shadow h-100 py-2" data-bs-toggle="modal"
						 data-bs-target="#exampleModal">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
										Specialists</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">Total</div><%=totalNumberOfSpecialist%>
								</div>
								<div class="col-auto">
									<i class="fa-solid fa-star-half-stroke fa-7x"></i>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>





			<div class="row">

				<!-- Area Chart -->
				<div class="col-xl-8 col-lg-7">
					<div class="card shadow mb-4">
						<!-- Card Header - Dropdown -->
						<div
								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">Usage Overview</h6>
							<div class="dropdown no-arrow">
								<a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
								   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
								</a>
								<div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
									 aria-labelledby="dropdownMenuLink">
									<div class="dropdown-header">Dropdown Header:</div>
									<a class="dropdown-item" href="#">Action</a>
									<a class="dropdown-item" href="#">Another action</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Something else here</a>
								</div>
							</div>
						</div>
						<!-- Card Body -->
						<div class="card-body">
							<div class="chart-area">
								<canvas id="myAreaChart"></canvas>
							</div>
						</div>
					</div>
				</div>

<%--				<!-- Pie Chart -->--%>
<%--				<div class="col-xl-4 col-lg-5">--%>
<%--					<div class="card shadow mb-4">--%>
<%--						<!-- Card Header - Dropdown -->--%>
<%--						<div--%>
<%--								class="card-header py-3 d-flex flex-row align-items-center justify-content-between">--%>
<%--							<h6 class="m-0 font-weight-bold text-primary">Revenue Sources</h6>--%>
<%--							<div class="dropdown no-arrow">--%>
<%--								<a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"--%>
<%--								   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--									<i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>--%>
<%--								</a>--%>
<%--								<div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"--%>
<%--									 aria-labelledby="dropdownMenuLink">--%>
<%--									<div class="dropdown-header">Dropdown Header:</div>--%>
<%--									<a class="dropdown-item" href="#">Action</a>--%>
<%--									<a class="dropdown-item" href="#">Another action</a>--%>
<%--									<div class="dropdown-divider"></div>--%>
<%--									<a class="dropdown-item" href="#">Something else here</a>--%>
<%--								</div>--%>
<%--							</div>--%>
<%--						</div>--%>
<%--						<!-- Card Body -->--%>
<%--						<div class="card-body">--%>
<%--							<div class="chart-pie pt-4 pb-2">--%>
<%--								<canvas id="myPieChart"></canvas>--%>
<%--							</div>--%>
<%--							<div class="mt-4 text-center small">--%>
<%--                                        <span class="mr-2">--%>
<%--                                            <i class="fas fa-circle text-primary"></i> Direct--%>
<%--                                        </span>--%>
<%--								<span class="mr-2">--%>
<%--                                            <i class="fas fa-circle text-success"></i> Social--%>
<%--                                        </span>--%>
<%--								<span class="mr-2">--%>
<%--                                            <i class="fas fa-circle text-info"></i> Referral--%>
<%--                                        </span>--%>
<%--							</div>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>

		</section>


	<footer class="site-footer">
		<div class="text-center">
			<p>
				© Copyrights 2024<strong>Group 12</strong>. All Rights Reserved
			</p>

			<a href="index.html#" class="go-top">
				<i class="fa fa-angle-up"></i>
			</a>
		</div>
	</footer>

	</section>
	<div class="modal fade" id="exampleModal" tabindex="-1"
		 aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-danger" id="exampleModalLabel">Add Specialist</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<form action="../addSpecialist" method="post">

						<div class="form-group">
							<label class="form-label">Enter Specialist Name</label> <input type="text"
																						   name="specialistName" placeholder="Enter Specialist Name" class="form-control" />
						</div>
						<div class="text-center mt-2">
							<button type="submit" class="btn btn-outline-danger ">Add</button>
						</div>

					</form>



				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>



	<script src="../Dashassets/js/Py4ZAUNCz9md.js"></script>
	<script src="../Dashassets/js/ze8gppJZjEMa.js"></script>
	<script class="include" type="Dashassets/text/javascript" src="../Dashassets/js/NMTwUwpkUl6s.js"></script>
	<script src="../Dashassets/js/L6AtHWFwgaJi.js"></script>
	<script src="../Dashassets/js/FaMU0TPCXw3s.js" type="Dashassets/text/javascript"></script>
	<script src="../Dashassets/js/EdmIX6LYV57Z.js"></script>

	<script src="../Dashassets/js/GYGjIdlUsTny.js"></script>
	<script type="../Dashassets/text/javascript" src="../Dashassets/js/3hqrMYtj3L7k.js"></script>
	<script type="../Dashassets/text/javascript" src="../Dashassets/js/RcrlNDQpkV64.js"></script>

	<script src="../Dashassets/js/cg3TL0eNXCcl.js"></script>
	<script src="../Dashassets/js/Mj5aD5qfUaBz.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var unique_id = $.gritter.add({
				// (string | mandatory) the heading of the notification
				title: 'Welcome to Dashio!',
				// (string | mandatory) the text inside the notification
				text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
				// (string | optional) the image to display on the left
				image: 'img/ui-sam.jpg',
				// (bool | optional) if you want it to fade out on its own or just sit there
				sticky: false,
				// (int | optional) the time you want it to be alive for before fading out
				time: 8000,
				// (string | optional) the class name you want to apply to that specific message
				class_name: 'my-sticky-class'
			});

			return false;
		});
	</script>
	<script type="application/javascript">
		$(document).ready(function() {
			$("#date-popover").popover({
				html: true,
				trigger: "manual"
			});
			$("#date-popover").hide();
			$("#date-popover").click(function(e) {
				$(this).hide();
			});

			$("#my-calendar").zabuto_calendar({
				action: function() {
					return myDateFunction(this.id, false);
				},
				action_nav: function() {
					return myNavFunction(this.id);
				},
				ajax: {
					url: "show_data.php?action=1",
					modal: true
				},
				legend: [{
					type: "text",
					label: "Special event",
					badge: "00"
				},
					{
						type: "block",
						label: "Regular event",
					}
				]
			});
		});

		function myNavFunction(id) {
			$("#date-popover").hide();
			var nav = $("#" + id).data("navigation");
			var to = $("#" + id).data("to");
			console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
		}
	</script>
	<script>if( window.self == window.top ) { (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m) })(window,document,'script','//www.google-analytics.com/analytics.js','ga'); ga('create', 'UA-55234356-6', 'auto'); ga('send', 'pageview'); } </script>


</body></html>