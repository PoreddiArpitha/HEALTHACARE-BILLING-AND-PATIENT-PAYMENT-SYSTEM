<!DOCTYPE html>

<%@page import="java.sql.*"%>
<html lang="en">
<head>
</head>
	
	<%
	
	System.out.print("admin connected");
	String user =request.getParameter("admin");
	String psw=request.getParameter("admin");
    
	System.out.print(user);
	System.out.print(psw);
	
	if(user.equalsIgnoreCase("admin") && psw.equalsIgnoreCase("admin"))
	{
		response.sendRedirect("adminhome.jsp");
	}
	else{
		response.sendRedirect("admin.jsp");
	}
	
	
	%>

</body>
</html>




