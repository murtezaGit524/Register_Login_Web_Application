package com.sathya.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sathya.dao.UserDao;
import com.sathya.dao.UserDaoImp;
import com.sathya.model.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final UserDao userDao = new UserDaoImp();
    public RegisterServlet() {
        super();
        }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		
		
		//UserDao userDao = new UserDaoImp();
		if(userDao.addUser(user))
		{
			response.sendRedirect("Login.jsp?registration=success");
		}
		else
		{
			response.sendRedirect("Register.jsp?error=1");
		}
	}

}
