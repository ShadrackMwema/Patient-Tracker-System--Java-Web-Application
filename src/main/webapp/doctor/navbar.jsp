


<!-- for jstl tag -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- end of jstl tag -->

<%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark sticky-top"style="background-color: #348aa1;padding-top: 50px;padding-bottom: 30px;padding-left: 60px;padding-right: 60px">
	<div class="container-fluid">
		<div class="sidebar-toggle-box">
			<div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
		</div>

		<a href="index.jsp" class="logo" style="text-decoration: none;"><b>health<span>Trace</span></b></a>

		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<!-- original ul <ul class="navbar-nav me-auto mb-2 mb-lg-0"> -->
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<!-- if user not logged in then user can see below items -->
				<!-- to create dynamic navbar -->



				<li class="nav-item"><p class="nav-link active"
										aria-current="page" ><i class="fa-regular fa-face-smile-beam"></i> Welcome Back Dr. ${doctorObj.fullName}!</p></li>


				<!-- end if user not logged in then user can see below items -->
				<li class="nav-item">

					<!-- if user is logged in then user can see below items -->
					<!-- to create dynamic navbar -->

					<div class="dropdown">
						<button class="btn btn-outline-light dropdown-toggle" type="button"
								id="dropdownMenuButton1" data-bs-toggle="dropdown"
								aria-expanded="false">
							<i class="fa-solid fa-user-doctor"></i> ${ doctorObj.fullName}
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="edit_profile.jsp">Edit
								Profile</a></li>
							<li><a class="dropdown-item" href="../doctorLogout">Logout</a></li>


						</ul>
					</div>











			</ul>

		</div>
	</div>
</nav>
