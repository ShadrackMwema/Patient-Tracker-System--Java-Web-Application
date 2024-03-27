<%@page import="com.healthTrace.entity.Doctor"%>
<%@page import="com.healthTrace.dao.DoctorDAO"%>
<%@page import="com.healthTrace.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.healthTrace.db.DBConnection"%>
<%@page import="com.healthTrace.dao.SpecialistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- for jstl tag -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- end of jstl tag -->

<%@page isELIgnored="false"%>

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

	<!-- col-2 --><div style="position: relative;margin: 30px;background-color: #afc8fa;padding: 10px">

	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-12">

					<div class="card-body">
						<p class="fs-3 text-center text-danger">Edit Doctor Details</p>

						<!-- message print -->
						<!-- for success msg -->
						<c:if test="${not empty successMsg }">
							<p class="text-center text-success fs-3">${successMsg}</p>
							<c:remove var="successMsg" scope="session" />
						</c:if>

						<!-- for error msg -->
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<!-- End of message print -->



						<%
							//get specific doctor id with the help of request.getParameter()
							//which is coming from url for doctor editing(which i pass through url when press edit doctor)...
							int id = Integer.parseInt(request.getParameter("id")); //this "id" is prefix name in URL
							DoctorDAO docDAO = new DoctorDAO(DBConnection.getConn());
							Doctor doctor = docDAO.getDoctorById(id);//call getDoctorById(id) which return doctor of specific id
						%>

						<!-- boostrap form -->

						<!-- doctors details form with specific id's doctors submitted data/details with editable field -->

						<form action="../updateDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input
									name="fullName" type="text" placeholder="Enter full name"
									class="form-control" value="<%=doctor.getFullName()%>">

							</div>
							<div class="mb-3">
								<label class="form-label">Date of Birth</label> <input
									name="dateOfBirth" type="date" placeholder="Enter DOB"
									class="form-control" value="<%=doctor.getDateOfBirth()%>">

							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									name="qualification" type="text"
									placeholder="Enter qualification" class="form-control"
									value="<%=doctor.getQualification()%>">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label> <select
									class="form-control" name="specialist">
								<option><%=doctor.getSpecialist()%></option>

								<%
									SpecialistDAO spDAO = new SpecialistDAO(DBConnection.getConn());
									List<Specialist> spList = spDAO.getAllSpecialist();
									for (Specialist sp : spList) {
								%>
								<option>
									<%=sp.getSpecialistName()%>
								</option>
								<%
									}
								%>

							</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email address</label> <input
									name="email" type="email" placeholder="Enter Email"
									class="form-control" value="<%=doctor.getEmail()%>">

							</div>
							<div class="mb-3">
								<label class="form-label">Phone</label> <input name="phone"
																			   type="text" placeholder="Enter mobile number"
																			   class="form-control" value="<%=doctor.getPhone()%>">

							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="text" placeholder="Enter password"
									class="form-control" value="<%=doctor.getPassword()%>">
							</div>

							<!-- for update data of specific user's id used "hidden" id -->
							<div class="mb-3">
								<input name="id" type="hidden" class="form-control"
									   value="<%=doctor.getId()%>">
							</div>

							<button type="submit" class="btn btn-danger text-white col-md-12">Update</button>
						</form>
						<!-- <br>Don't have an account? <a href="#!"
							class="text-decoration-none">create one</a> -->
						<!-- end of boostrap form -->

					</div>
				</div>
			</div>
		</div>
	</div>
	<div>


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


</body>
</html>
