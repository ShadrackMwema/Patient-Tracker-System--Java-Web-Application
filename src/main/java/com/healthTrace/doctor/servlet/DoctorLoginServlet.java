package com.healthTrace.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.healthTrace.entity.Doctor;

@WebServlet("/doctorLogin")
public class DoctorLoginServlet extends HttpServlet {

	// Hardcoded email and password
	private static final String EMAIL = "doctor@example.com";
	private static final String PASSWORD = "password";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Get email and password from the request
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		// Create session
		HttpSession session = req.getSession();

		// Check if provided credentials match hardcoded values
		if (EMAIL.equals(email) && PASSWORD.equals(password)) {
			// Create a dummy Doctor object
			Doctor doctor = new Doctor();
			doctor.setEmail(email);
			// Set any other doctor information if needed

			// Store the logged in doctor object in session
			session.setAttribute("doctorObj", doctor);
			// Redirect to the doctor's dashboard
			resp.sendRedirect("doctor/index.jsp");
		} else {
			// If credentials don't match, set error message in session and redirect back to login page
			session.setAttribute("errorMsg", "Invalid email or password");
			resp.sendRedirect("doctor_login.jsp");
		}
	}
}
