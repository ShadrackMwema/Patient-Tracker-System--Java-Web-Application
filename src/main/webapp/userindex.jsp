<%@page import="com.healthTrace.db.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.healthTrace.dao.DoctorDAO" %>
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
    <link href="assets/css/main.css" rel="stylesheet">
    <link href="assets/css/utilities.css" rel="stylesheet">


    <title>User Page | healthTrace</title>
    <%@include file="component/allcss.jsp"%>


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

<style>
    .clickable-box {
    cursor: pointer;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark sticky-top"style="background-color: #348aa1;padding-top: 50px;padding-bottom: 30px;padding-left: 60px;padding-right: 60px">
    <div class="container-fluid">
        <div class="sidebar-toggle-box">
            <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
        </div>

        <a href="userindex.jsp" class="logo" style="text-decoration: none;"><b>health<span style="font-variant: small-caps;">Trace</span></b></a>

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

                <!-- means user is log in -->
                <li class="nav-item"><p class="nav-link active"
                                        aria-current="page" ><i class="fa-regular fa-face-smile-beam"></i> Welcome Back ${userObj.fullName}!</p></li>


                <div class="dropdown">
                    <button class="btn btn-outline-light dropdown-toggle" type="button"
                            id="dropdownMenuButton1" data-bs-toggle="dropdown"
                            aria-expanded="false">
                        <i class="fa-solid fa-circle-user"></i> ${userObj.fullName}
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
                        <li><a class="dropdown-item" href="userLogout">Logout</a></li>

                    </ul>
                </div>





                <!-- end of if user is logged in then user can see below items -->








            </ul>

        </div>
    </div>
</nav>

<aside>
    <div id="sidebar" class="nav-collapse "style="border-radius: 10px;height: 600px;width: 210px;">

        <ul class="sidebar-menu" id="nav-accordion">
            <p class="centered"><a href="userindex.jsp"><i class="fa-solid fa-user  fa-10x"style="color: ghostwhite"></i> </a></p>
            <c:if test="${not empty userObj}">
                <div class="centered" style="font-size: 24px;color: ghostwhite"> <!-- Adjust font size as needed -->
                        ${userObj.fullName}
                </div>
            </c:if>
            <li class="mt">
                <a class="active" href="userindex.jsp">
                    <i class="fa fa-dashboard"></i>
                    <span>Overview</span>
                </a>
            </li>
            </li>
            <li class="sub-menu">
                <a href="logged_In_appointment.jsp">
                    <i class="fa fa-book"></i>
                    <span>Appointments</span>
                </a>

            </li>

            <li>


            <li class="sub-menu">
                <a href="javascript:;">
                    <i class="fa fa-comments-o"></i>
                    <span>Chat Room</span>
                </a>
                <ul class="sub">
                    <li><a href="lobby.html">Lobby</a></li>
                    <li><a href="chat_room.html"> Chat Room</a></li>
                </ul>
            </li>
        </ul>

    </div>
</aside>



<section id="main-content">
    <section class="wrapper">


        <div class="row mt">

            <div class="col-md-4 col-sm-4 mb">
                <a href="personal_details.jsp" style="text-decoration: none; color: inherit;">

                <div class="grey-panel pn donut-chart">
                    <div class="grey-header">
                        <h5>PERSONAL DETAILS</h5>
                    </div>

                    <div class="card my-card">
                        <div class="card-body text-center text-success">
                            <i class="fa-solid fa-user-plus fa-10x"></i><br>
                            <p class="fs-4 text-center">
                             click to view
                            </p>
                        </div>
                    </div>


                </div>
                </a>

            </div>

             <div class="col-md-4 col-sm-4 mb">
                 <a href="viewAppointment.jsp" style="text-decoration: none; color: inherit;">

                 <div class="darkblue-panel pn clickable-box">
                        <div class="darkblue-header">
                            <h5>APPOINTMENTS</h5>
                        </div>
                        <div class="card my-card">
                            <div class="card-body text-center text-success">
                                <i class="fa-solid fa-calendar-check fa-10x"></i><br>
                                <p class="fs-4 text-center">Make new appointments  <br></p>
                                <p class="fs-4 text-center">View appointments  <br></p>
                            </div>
                        </div>
                    </div>
                 </a>
                </div>


            <div class="col-md-4 col-sm-4 mb">

                <div class="green-panel pn">
                    <div class="green-header">
                        <h5>CHAT ROOM</h5>
                    </div>
                    <div class="card my-card">
                        <div class="card-body text-center text-success">
                            <i class="fa-solid fa-comments fa-10x"></i><br>
                            <p class="fs-4 text-center">

                                View messages<br> </p>
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <div class="row"style="margin-top: 20px">


            <div class="col-md-8 mb"STYLE="margin-top: 20px">
                <div class="message-p pn">
                    <div class="message-header">
                        <h5>DIRECT MESSAGE(DM)</h5>
                    </div>
                    <div class="row">
                        <div class="col-md-3 centered hidden-sm hidden-xs">
                            <i class="fa-solid fa-user  fa-4x"style="color: #44444b"></i>

                        </div>
                        <div class="col-md-9">
                            <p>
                                <name>Doctor Wesonga</name>
                                sent you a message.
                            </p>
                            <p class="small">3 hours ago</p>
                            <p class="message">Hello Doctor Wesonga. I think am going on just fine after the chemo.Thanks so much Doc...looking forward to see you on wednesday</p>
                            <form class="form-inline" role="form">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="exampleInputText" placeholder="Reply Doc">
                                </div>
                                <button type="submit" class="btn btn-default">Send</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>

        </div>




        </div>



        </div>

    </section>
</section>


<footer class="site-footer">
    <div class="text-center">
        <p>
            © Copyrights 2024<strong>Group 12</strong>. All Rights Reserved
        </p>

        <a href="userindex.jsp#" class="go-top">
            <i class="fa fa-angle-up"></i>
        </a>
    </div>
</footer>


<script src="Dashassets/js/Py4ZAUNCz9md.js"></script>
<script src="Dashassets/js/ze8gppJZjEMa.js"></script>
<script class="include" type="Dashassets/text/javascript" src="Dashassets/js/NMTwUwpkUl6s.js"></script>
<script src="Dashassets/js/L6AtHWFwgaJi.js"></script>
<script src="Dashassets/js/FaMU0TPCXw3s.js" type="Dashassets/text/javascript"></script>
<script src="Dashassets/js/EdmIX6LYV57Z.js"></script>

<script src="Dashassets/js/GYGjIdlUsTny.js"></script>
<script type="Dashassets/text/javascript" src="Dashassets/js/3hqrMYtj3L7k.js"></script>
<script type="Dashassets/text/javascript" src="Dashassets/js/RcrlNDQpkV64.js"></script>

<script src="Dashassets/js/cg3TL0eNXCcl.js"></script>
<script src="Dashassets/js/Mj5aD5qfUaBz.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'Welcome to healthTrace!',
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