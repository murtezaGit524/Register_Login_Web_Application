<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
     <body>
        <%			
        	HttpSession currentsession = request.getSession(false);
        	
        	// check the session is not null and set username attribute
        	
        	if(currentsession != null)
        	{
        		currentsession.invalidate();
				response.sendRedirect("index.html");
        	}
        else 
		{
			response.sendRedirect("index.html");
		}
        %>
        </body>
    
</html>