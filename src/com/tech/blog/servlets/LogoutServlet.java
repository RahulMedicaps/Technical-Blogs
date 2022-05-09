package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.tech.blog.entites.Message;

public class LogoutServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		PrintWriter out = response.getWriter();
		HttpSession s= request.getSession();
		s.removeAttribute("currentUser");
		Message msg = new Message("Logout Sucessfully", "success", "alert-success");
		s.setAttribute("msg", msg);
		response.sendRedirect("login_page.jsp");
}
}
