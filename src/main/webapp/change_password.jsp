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

<head>
	<meta charset="UTF-8">
	<title>User Login</title>
	<%@include file="component/allcss.jsp"%>

	<!-- customs css for this page -->
	<style type="text/css">
		.my-card {
			box-shadow: 0px 0px 10px 1px #b4fafa;
			/*box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);*/
		}
	</style>
	<!-- end of customs css for this page -->

</head>
<body>
<!-- navbar -->
<%@include file="component/navbar.jsp"%>
<!-- end navbar -->



<!-- <h1>User Login</h1> -->

<!-- User Login -->
<div class="container p-5">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card my-card">

				<div class="card-body">
					<p class="fs-3 text-center myP-color">Change Password</p>

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


					<form action="userChangePassword" method="post">
						<div class="mb-3">
							<label class="form-label">Enter New Password</label> <input
								name="newPassword" type="password" placeholder="Enter new password"
								class="form-control" required="required">

						</div>
						<div class="mb-3">
							<label class="form-label">Enter Old Password</label> <input
								name="oldPassword" type="password" placeholder="Enter old password"
								class="form-control" required>
						</div>
						<input type="hidden" value="${userObj.id}" name="userId">

						<button type="submit" class="btn my-bg-color text-white col-md-12">Change
							Password</button>
					</form>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- End of User Login -->






</body>
</html>