package com.sathya.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sathya.dao.UserDao;
import com.sathya.dao.UserDaoImp;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userDao = new UserDaoImp();
    public LoginServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		if(userDao.isValidUser(username,password))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect("Welcome.jsp");
		}
		else 
		{
			response.sendRedirect("Login.jsp?error=1");
		}
	}

}
