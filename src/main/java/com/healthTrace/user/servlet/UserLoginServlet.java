package com.healthTrace.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.healthTrace.entity.User;

@WebServlet("/userLogin")
public class UserLoginServlet extends HttpServlet {

	// Hardcoded email and password
	private static final String EMAIL = "user@gmail.com";
	private static final String PASSWORD = "password";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		// Check if provided credentials match hardcoded values
		if (EMAIL.equals(email) && PASSWORD.equals(password)) {
			// Create a dummy User object
			User user = new User();
			user.setEmail(email);
			// Set any other user information if needed

			session.setAttribute("userObj", user);
			resp.sendRedirect("userindex.jsp");
		} else {
			session.setAttribute("errorMsg", "Invalid email or password");
			resp.sendRedirect("user_login.jsp");
		}
	}
}
