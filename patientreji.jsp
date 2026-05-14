<%@page import="java.sql.PreparedStatement"%>

<%@page import="lab.conn"%>
<%@page import="java.sql.Connection"%>
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
System.out.print("STUDENT REJISTRATION CONNECTED");

Connection con=conn.myconn();
String pid=request.getParameter("pid");
String pfname=request.getParameter("pfname");
String plname=request.getParameter("plname");
String pemail=request.getParameter("pemail");
String ppsw=request.getParameter("ppsw");
String pbranch=request.getParameter("pbranch");
String pno=request.getParameter("pno");
PreparedStatement pstm=con.prepareStatement("insert into patreji value(?,?,?,?,?,?,?,?)");
pstm.setString(1, null);
pstm.setString(2, pid);
pstm.setString(3, pfname);
pstm.setString(4, plname);
pstm.setString(5, pemail);
pstm.setString(6, ppsw);
pstm.setString(7, pbranch);
pstm.setString(8, pno);
int i=pstm.executeUpdate();
 
if(i>0)
{
	session.setAttribute("pid", pid);
	System.out.println("login oka");
	response.sendRedirect("success.jsp");	
}
else{
	  System.out.println("NOT LOGINNNN");
 
	   response.sendRedirect("register1.jsp");
}





	
	
	
	
	
	
	



%>
</body>
</html>