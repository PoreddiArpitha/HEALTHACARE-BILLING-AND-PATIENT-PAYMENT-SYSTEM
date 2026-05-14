<%@page import="javax.xml.ws.Response"%>

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
System.out.println("jjjjjjjjjjjjjjjjjjj");
String cardtype= request.getParameter("cardtype");
String cardnumber= request.getParameter("cardnumber");
String cvvnumber = request.getParameter("cvvnumber");
String studentmobile = request.getParameter("mobile");

System.out.println("jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
try {
	//System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhh");
	Connection con=conn.myconn();
	PreparedStatement ps = con.prepareStatement("insert into payment values(?,?,?,?,?)");
	ps.setString(1, null);
	ps.setString(2, cardtype);
	ps.setString(3, cardnumber);
	ps.setString(4,studentmobile );
	ps.setString(5, cvvnumber);

	int i = ps.executeUpdate();
	if(i==1)
	{
		System.out.println("connected to database");
	response.sendRedirect("paid.jsp");
	
		//RequestDispatcher rd = ps.r
	}
	
	else {
		
		response.sendRedirect("carddetails.jsp");
	
		
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	
	
 %>



</body>
</html>