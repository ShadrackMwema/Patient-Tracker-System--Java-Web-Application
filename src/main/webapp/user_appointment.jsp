<%@page import="com.healthTrace.entity.Doctor"%>
<%@page import="java.util.List"%>
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

<link href="Dashassets/images/7zvDN2okWbny.png" rel="icon">
<link href="Dashassets/images/V9OAuGdBb0Qh.png" rel="apple-touch-icon">

<link href="Dashassets/css/503uKmQN8xls.css" rel="stylesheet">

<link href="Dashassets/css/per8hcNp7jdl.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../Dashassets/css/bnsLJI6BAg3h.css">
<link rel="stylesheet" type="text/css" href="../Dashassets/css/jz3x9DhP6jJ7.css">

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

<link href="Dashassets/images/7zvDN2okWbny.png" rel="icon">
<link href="Dashassets/images/V9OAuGdBb0Qh.png" rel="apple-touch-icon">

<link href="Dashassets/css/503uKmQN8xls.css" rel="stylesheet">

<link href="Dashassets/css/per8hcNp7jdl.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../Dashassets/css/bnsLJI6BAg3h.css">
<link rel="stylesheet" type="text/css" href="../Dashassets/css/jz3x9DhP6jJ7.css">

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

<head>
<meta charset="UTF-8">
<title>User Appointment Page</title>
<!-- all css include -->
<%@include file="component/allcss.jsp"%>

<!-- customs css for this page -->
<style type="text/css">


/* backgournd image css */

/*.my-bg-img{*/
/*	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),url("img/hospital1.jpg");*/
/*	height: 20vh;*/
/*	width: 100%;*/
/*	background-size:cover;*/
/*	background-repeat: no-repeat;*/
/*	*/
/*}*/

/* backgournd image css */
</style>
<!-- end of customs css for this page -->

</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<!-- start 1st Div -->



	<!-- end of 1st Div -->


	<!-- 2nd Div -->

	<div class="container p-3" style="margin-top: 20px">
		<p class="fs-2"></p>

		<div class="row">
			
			<!-- col-1 -->
			<div class="col-md-6 p-5">
				<!-- for Background image -->
				<!-- <img alt="" src="img/picDoc.jpg" width="500px" height="400px"> -->
				<img alt="" src="img/Appoint.jpg" style="border-radius:10px">
			</div>
			
			<!-- col-2 -->
			<div class="col-md-6">
				<div class="card my-card">
					<div class="card">
						<p class="text-center fs-3">User Appointment</p>

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


						<!-- boostrap form -->
						<form class="row g-3" action="addAppointment" method="post">
							
							<!-- take user Id in hidden field -->
							<input type="hidden" name="userId" value="${ userObj.id }">
							
							<div class="col-md-6">
								<label class="form-label">Full Name</label> <input required="required"
									name="fullName" type="text" placeholder="Enter full name"
									class="form-control">

							</div>

							<div class="col-md-6">
								<label class="form-label">Gender</label> <select
									class="form-control" name="gender" required="required">
									<option selected="selected" disabled="disabled">---Select
										Gender---</option>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label class="form-label">Age</label> <input name="age"
								required="required"	type="number" placeholder="Enter your Age" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Appointment Date</label> <input
								required="required"	name="appointmentDate" type="date" class="form-control">
							</div>

							<div class="col-md-6">
								<label class="form-label">Email</label> <input name="email"
								required="required"	type="email" placeholder="Enter email" class="form-control">
							</div>

							<div class="col-md-6">
								<label class="form-label">Phone</label> <input name="phone"
								required="required"	type="number" maxlength="11" placeholder="Enter Mobile no."
									class="form-control">
							</div>

							<div class="col-md-6">
								<label class="form-label">Diseases</label> <input
								required="required"	name="diseases" type="text" placeholder="Enter diseases"
									class="form-control">
							</div>

							<div class="col-md-6">
								<label class="form-label">Doctor</label> <select
								 required="required" class="form-control" name="doctorNameSelect">
									<option selected="selected" disabled="disabled">---Select---</option>
									
									<%
									DoctorDAO doctorDAO = new DoctorDAO(DBConnection.getConn());
									List<Doctor> listOfDoctor = doctorDAO.getAllDoctor();
									for(Doctor d : listOfDoctor)
									
									{%>
									<!-- actually we take id of doctor from doctor table -->
									<option value="<%= d.getId() %>"> <%= d.getFullName()%> (<%= d.getSpecialist() %>) </option>
									
									<%
									}
									%>
									
									<!-- <option>Doctor name</option> -->
								</select>
							</div>


							<!-- below are visible to right side part of form-->

							<div class="col-md-12">
								<label class="form-label">Full Address</label>
								<textarea name="address" required="required" class="form-control" rows="3" cols=""></textarea>
							</div>



							<!-- If user is logged in, show the submit button -->
							<c:if test="${not empty userObj}">
								<div class="col-md-12">
									<button type="submit" class="btn my-bg-color text-white col-md-12">Submit</button>
								</div>
							</c:if>

							<c:if test="${empty userObj}">
								<div class="col-md-12">
									<button type="button" class="btn my-bg-color text-white col-md-12" onclick="redirectToLogin()">Submit</button>
								</div>
							</c:if>

							<script>
								function redirectToLogin() {
									// Show an alert message
									alert('Please log in to make an appointment');
									// Redirect to the login page after the user clicks "OK" on the alert
									window.location.href = 'user_login.jsp'; // Change '/path/to/login' to the actual path to your login page
								}
							</script>



						</form>

						<!-- end of boostrap form -->

					</div>
				</div>

			</div>



		</div>


	</div>

	<!-- 2nd Div -->















<!-- footer -->
<%@include file="component/footer.jsp" %>
<!-- end footer -->

</body>
</html>