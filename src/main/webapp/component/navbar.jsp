<%--
  Created by IntelliJ IDEA.
  User: HomePC
  Date: 2/14/2024
  Time: 7:52 AM
  To change this template use File | Settings | File Templates.
--%>


<nav class="navbar">
    <div class="container">
        <div class="navbar-content d-flex justify-content-between align-items-center">
            <div class="brand-and-toggler d-flex align-items-center justify-content-between">
                <a href="#" class="navbar-brand d-flex align-items-center">
                    <span class="brand-shape d-inline-block text-white">hT</span>
                    <span class="brand-text fw-7">healthTrace</span>
                </a>
                <button type="button" class="d-none navbar-show-btn">
                    <i class="fas fa-bars"></i>
                </button>
            </div>

            <div class="navbar-box">
                <button type="button" class="navbar-hide-btn">
                    <i class="fas fa-times"></i>
                </button>

                <ul class="navbar-nav d-flex align-items-center">
                    <li class="nav-item">
                        <a href="user_login.jsp" class="nav-link text-white nav-active text-nowrap">User</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link text-white text-nowrap">Admin</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link text-white text-nowrap">Doctor</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link text-white text-nowrap">Apointment</a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</nav>


