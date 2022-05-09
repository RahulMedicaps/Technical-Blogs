package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.tech.blog.dao.UserDao;
import com.tech.blog.entites.Message;
import com.tech.blog.entites.User;
import com.tech.blog.helper.ConnectionProvider;

public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		PrintWriter out = response.getWriter();
		//login
		//fetch details
		String userEmail = request.getParameter("email");
		String userPassword = request.getParameter("password");
		
		try {
			UserDao dao =new UserDao(ConnectionProvider.getConnection());
			User u = dao.getUserByEmailAndPassword(userEmail, userPassword);
			if(u==null) {
				Message msg = new Message("Invalid user!..Try again", "error", "alert-danger");
				HttpSession s= request.getSession();
				s.setAttribute("msg", msg);
				response.sendRedirect("login_page.jsp");
			}else {
				HttpSession s = request.getSession();
				s.setAttribute("currentUser", u);
				response.sendRedirect("profile.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
