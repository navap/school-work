package com.example.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Calculator extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		HttpSession session = request.getSession();

		int function;
		float result;
		String nextPage = null;

		switch (request.getParameter("step")) {
		case "1":
			// Log in attempted
			boolean auth = Boolean.parseBoolean((String) session
					.getAttribute("auth"));
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			if (auth) {
				// User already logged in from before
				nextPage = "functions.jsp";
				break;
			}

			if (!username.equals("admin") || !password.equals("password")) {
				// Log in failed
				request.setAttribute("error", "1");
				nextPage = "index.jsp";
			} else {
				// Log in succeeded, display functions)
				session.setAttribute("auth", "true");
				nextPage = "functions.jsp";
			}
			break;
		case "2":
			// Function picked
			function = Integer.parseInt(request.getParameter("function"));
			session.setAttribute("function", function);
			session.setAttribute("function_name", functionName(function));

			// Display inputs
			nextPage = "values.jsp";
			break;
		case "3":
			// Inputs entered
			float val1;
			float val2;
			String val1_raw = request.getParameter("val1");
			String val2_raw = request.getParameter("val2");
			
			try {
				val1 = Float.parseFloat(val1_raw);
				val2 = Float.parseFloat(val2_raw);
			} catch (NumberFormatException e) {
				request.setAttribute("error", "1");
				nextPage = "values.jsp";
				break;
			}

			session.setAttribute("val1", val1);
			session.setAttribute("val2", val2);

			function = (int) session.getAttribute("function");

			result = doMath(val1, val2, function);
			session.setAttribute("result", result);

			// Display answer
			nextPage = "results.jsp";
			break;
		}

		RequestDispatcher view = request.getRequestDispatcher(nextPage);
		view.forward(request, response);

		// request.setAttribute("result", result);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		HttpSession session = request.getSession();
		boolean auth = Boolean.parseBoolean((String) session
				.getAttribute("auth"));

		if (auth) {
			RequestDispatcher view = request
					.getRequestDispatcher("functions.jsp");
			view.forward(request, response);
		} else {
			RequestDispatcher view = request.getRequestDispatcher("index.jsp");
			view.forward(request, response);
		}
	}

	public float doMath(float val1, float val2, int function) {
		switch (function) {
		case 1:
			return val1 + val2;
		case 2:
			return val1 - val2;
		case 3:
			return val1 * val2;
		case 4:
			return val1 / val2;
		default:
			return -1;
		}
	}

	public String functionName(int function) {
		switch (function) {
		case 1:
			return "added to";
		case 2:
			return "subtracted by";
		case 3:
			return "multiplied by";
		case 4:
			return "divided by";
		default:
			return "ERROR";
		}
	}

}
