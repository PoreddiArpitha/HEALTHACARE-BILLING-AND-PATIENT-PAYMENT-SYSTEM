<%@page import="java.sql.ResultSet"%>
<%@page import="lab.conn"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
System.out.print("PATIENT LOGIN CONNECTED");
String pid =request.getParameter("pid");



String psw=request.getParameter("psw");

Connection con =conn.myconn();
PreparedStatement pstm=con.prepareStatement("select * from patreji where pid='"+pid+"' and ppsw='"+psw+"'");
ResultSet rs=pstm.executeQuery();

if(rs.next())
{
	System.out.print("PATIENT LOGIN SUCESS");
	response.sendRedirect("feepay.jsp");
	 HttpSession httpSession = request.getSession(false);
   	 httpSession.setAttribute("pid", pid);  	
	System.out.print("pid"+pid);
}

else
{
	System.out.print("PATIENT  LOGIN FAILED");
	response.sendRedirect("patientlogin.jsp");
	
}

%>
</body>
</html>