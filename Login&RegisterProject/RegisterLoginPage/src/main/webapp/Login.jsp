<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head>
        <title>Login Page</title>
        <link rel="stylesheet" href="Login.css">
         <!-- boxicon link-->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    </head>
        <body>
        <ul class="navbar">
            <li><a href="index.html">Home</a></li>
            <li><a href="About.html">About</a></li>
            <li><a href="Tech.html">Technologies</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="Login.jsp">Login</a></li>
            <li><a href="Register.jsp">Register</a></li>
          </ul>
      <div class="container">                          
            <div class="main-box login">
                <h1>Login</h1>
                <form method="post" action="./LoginServlet">
                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-envelope' ></i></span>
                        <input type="text"  name="username" required>
                        <label>Username</label>
                    </div>
    
                    <div class="input-box">
                        <span class="icon"><i class='bx bx-lock-alt' ></i></span>
                        <input type="password" name="password" required>
                        <label>Password</label>
                    </div>
    
                    <div class="check">
                        <label><input type="checkbox">Remember me</label>
                        <a href="#">Forget Password</a>
                    </div>
    
                    <button type="submit" class="main-btn">Login</button>
                    
                    <div class="register">
                        <p>If you don't have an account? <a href="Register.jsp" class="register-link">
                            Register Here! </a></p>
                    </div>
                </form>
            
           <%-- Display error massage if login is fail --%>
            	
            	<div class="error-msg">	
            	<%
            	String error = request.getParameter("error");
            		if(error != null && error.equals("1"))
            		{
            		%>
            		<p>Invalid username or password. Please try again.</p>
            		<%
            		}
            		%> 
            <%--Display massage if registration success --%>
            		<%
            	String regsuccess = request.getParameter("registration");
            		if(regsuccess != null && regsuccess.equals("success"))
            		{
            		%>
            		<p>Your Registration is successfull.Please Login</p>
            		<%
            		}
            		%>
            		</div>
            </div>
          </div>
    </body>
</html>