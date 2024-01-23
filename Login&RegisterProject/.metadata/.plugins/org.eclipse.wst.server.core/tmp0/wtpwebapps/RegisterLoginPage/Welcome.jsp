<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>welcome page</title>
        <link rel="stylesheet" href="Welcome.css">
    </head>
        <body>

            <%			
        	HttpSession session1 = request.getSession(false);
        	
        	// check the session is not null and set username attribute
        	
        	if(session1 != null && session1.getAttribute("username")!= null)
        	{
        		//get the username from the session
        		String username = (String)session1.getAttribute("username");
        	
        %>

        <div class="container"> 
        <ul class="navbar">           
            <a href="Logout.jsp">Logout</a>
            <!-- <li><a href="Register.html">Register</a></li> -->
          </ul>
          <div class="h1">
            <h1>Welcome ,<%=username %></h1>
          <h4>Hey, I'm Murteza Ansari</h4>
          <p class="p1">I'm a java Full Stack Developer To know about project details visit about page.<br>
            To know about the technologies what i used in this project please visit Tachnologies page.<br>
             mollitia nostrum incidunt eveniet atque dolore cupiditate reiciendis molestias ab, consectetur<br>
             esse velit iste alias quod.</p>
          </div>          
        </div>

        <%
        	}
        else 
		{
			response.sendRedirect("Login.jsp?error=1");
		}
        %>
        </body>
    
</html>