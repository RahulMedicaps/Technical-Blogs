package com.tech.blog.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entites.Message;
import com.tech.blog.entites.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;
@MultipartConfig
public class EditServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
			PrintWriter out = response.getWriter();
			String userEmail = request.getParameter("user_email");
            String userName = request.getParameter("user_name");
            String userPassword = request.getParameter("user_password");
            String userAbout = request.getParameter("user_about");
            Part part = request.getPart("image");

            String imageName = part.getSubmittedFileName();

            //get the user from the session...
            HttpSession s = request.getSession();
            User user = (User) s.getAttribute("currentUser");
            user.setEmail(userEmail);
            user.setName(userName);
            user.setPassword(userPassword);
            user.setAbout(userAbout);
            String oldFile = user.getProfile();
			user.setProfile(imageName);
			
			try {
				UserDao userDao = new UserDao(ConnectionProvider.getConnection());
				boolean ans = userDao.updateUser(user);
				if(ans) {
		
					String path = request.getRealPath("/")+"pics"+File.separator+user.getProfile();
					
					String pathOldFile = request.getRealPath("/")+"pics"+File.separator+oldFile;
					if(!oldFile.equals("default.png")) {
					Helper.deleteFile(pathOldFile);
					}
					if(Helper.saveFile(part.getInputStream(), path)) {
						out.print("profile updated......");
						Message msg = new Message("profile updated......", "success", "alert-success");
						s.setAttribute("msg", msg);
						
					}
				}else {
					out.print("not update..");
					Message msg = new Message("profile not updated......", "error", "alert-error");
					s.setAttribute("msg", msg);
				}
				response.sendRedirect("profile.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
}
