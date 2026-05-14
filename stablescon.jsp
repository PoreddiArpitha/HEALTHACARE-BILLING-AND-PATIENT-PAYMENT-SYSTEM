<%@page import="java.sql.PreparedStatement"%>
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
      try{
 Connection con=conn.myconn();
 PreparedStatement pstm;
String id=request.getParameter("id");
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
String prole=request.getParameter("prole");
String pdep=request.getParameter("pdep");
String pmode=request.getParameter("pmode");
String pconsfee=request.getParameter("pconsfee");
int id1=Integer.parseInt(id);
int pid1=Integer.parseInt(id);
if(id1==1234)
{
	
	
	String status="paid";
	pstm=con.prepareStatement("insert into pconfee values(?,?,?,?,?,?,?,?,?)");
	
			pstm.setString(1, null);
	        pstm.setString(2, id);
	        pstm.setString(3, pid);
	        pstm.setString(4, pname);
	        pstm.setString(5, prole);
	        pstm.setString(6, pdep);
	        pstm.setString(7, pmode);
	        pstm.setString(8, pconsfee);
	        pstm.setString(9, status);
	        int n=pstm.executeUpdate();
	        
	        if(n>0)
	        {
	        	
	        	response.sendRedirect("payment.jsp");
	        }
	        else
	        {
	        	
	        	response.sendRedirect("consfee.jsp");
	        }
	        
	        
			
}


else
if(pid1==9101)
{

	 
	
	
	String paddfee=request.getParameter("paddfee");
	String status="paid";
	pstm=con.prepareStatement("insert into paddfee values(?,?,?,?,?,?,?,?,?)");
	
			pstm.setString(1, null);
	        pstm.setString(2, id);
	        pstm.setString(3, pid);
	        pstm.setString(4, pname);
	        pstm.setString(5, prole);
	        pstm.setString(6, pdep);
	        pstm.setString(7, pmode);
	        pstm.setString(8, paddfee);
	        pstm.setString(9, status);
	        int n=pstm.executeUpdate();
	        
	        if(n>0)
	        {
	        	response.sendRedirect("payment.jsp");
	        }
	        else
	        {
	        	response.sendRedirect("adsfeepay.jsp");
	        }
	        

	
}



else
if(id1==7702)
{
	String proomfee=request.getParameter("proomfee");
	String status="paid";
	pstm=con.prepareStatement("insert into slibfee values(?,?,?,?,?,?,?,?,?)");
	
			pstm.setString(1, null);
	        pstm.setString(2, id);
	        pstm.setString(3, pid);
	        pstm.setString(4, pname);
	        pstm.setString(5, prole);
	        pstm.setString(6, pdep);
	        pstm.setString(7, pmode);
	        pstm.setString(8, proomfee);
	        pstm.setString(9, status);
	        int n=pstm.executeUpdate();
	        
	        if(n>0)
	        {
	        	response.sendRedirect("payment.jsp");
	        }
	        else
	        {
	        	response.sendRedirect("roomfeepay.jsp");
	        }
	   
}




else
if(id1==7997)
{

	String pbedfee=request.getParameter("pbedfee");
	String status="paid";
	pstm=con.prepareStatement("insert into sproject values(?,?,?,?,?,?,?,?,?)");
	
			pstm.setString(1, null);
	        pstm.setString(2, id);
	        pstm.setString(3, pid);
	        pstm.setString(4, pname);
	        pstm.setString(5, prole);
	        pstm.setString(6, pdep);
	        pstm.setString(7, pmode);
	        pstm.setString(8, pbedfee);
	        pstm.setString(9, status);
	        int n=pstm.executeUpdate();
	        
	        if(n>0)
	        {
	        	response.sendRedirect("payment.jsp");
	        }
	        else
	        {
	        	response.sendRedirect("bedfee.jsp");
	        }
	        

	
}
else
if(id1==9848)
{

	String pmedfee=request.getParameter("pmedfee");
	String status="paid";
	pstm=con.prepareStatement("insert into ssac values(?,?,?,?,?,?,?,?,?)");
	
			pstm.setString(1, null);
	        pstm.setString(2, id);
	        pstm.setString(3, pid);
	        pstm.setString(4, pname);
	        pstm.setString(5, prole);
	        pstm.setString(6, pdep);
	        pstm.setString(7, pmode);
	        pstm.setString(8, pmedfee);
	        pstm.setString(9, status);
	        int n=pstm.executeUpdate();
	        
	        if(n>0)
	        {
	        	response.sendRedirect("payment.jsp");
	        }
	        else
	        {
	        	response.sendRedirect("medifeepay.jsp");
	        }
	       
	
}

else
if(id1==2384)
{

	 
	String pnurfee=request.getParameter("pnurfee");
	String status="paid";
	pstm=con.prepareStatement("insert into ssport values(?,?,?,?,?,?,?,?,?)");
	
			pstm.setString(1, null);
	        pstm.setString(2, id);
	        pstm.setString(3, pid);
	        pstm.setString(4, pname);
	        pstm.setString(5, prole);
	        pstm.setString(6, pdep);
	        pstm.setString(7, pmode);
	        pstm.setString(8, pnurfee);
	        pstm.setString(9, status);
	        int n=pstm.executeUpdate();
	        
	        if(n>0)
	        {
	        	response.sendRedirect("payment.jsp");
	        }
	        else
	        {
	        	response.sendRedirect("nurfeepay.jsp");
	        }
	        

	
}

else
if(id1==4601)
{

	String picufee=request.getParameter("picufee");
	String status="paid";
	pstm=con.prepareStatement("insert into picu values(?,?,?,?,?,?,?,?,?)");
	
			pstm.setString(1, null);
	        pstm.setString(2, id);
	        pstm.setString(3, pid);
	        pstm.setString(4, pname);
	        pstm.setString(5, prole);
	        pstm.setString(6, pdep);
	        pstm.setString(7, pmode);
	        pstm.setString(8, picufee);
	        pstm.setString(9, status);
	        int n=pstm.executeUpdate();
	        
	        if(n>0)
	        {
	        	response.sendRedirect("payment.jsp");
	        }
	        else
	        {
	        	response.sendRedirect("icufeepay.jsp");
	        }
	        	
}

else
if(id1==6346)
{

	String pdietaryfee=request.getParameter("pdietaryfee");
	String status="paid";
	pstm=con.prepareStatement("insert into scondo values(?,?,?,?,?,?,?,?,?)");
	
			pstm.setString(1, null);
	        pstm.setString(2, id);
	        pstm.setString(3, pid);
	        pstm.setString(4, pname);
	        pstm.setString(5, prole);
	        pstm.setString(6, pdep);
	        pstm.setString(7, pmode);
	        pstm.setString(8, pdietaryfee);
	        pstm.setString(9, status);
	        int n=pstm.executeUpdate();
	        
	        if(n>0)
	        {
	        	response.sendRedirect("payment.jsp");
	        }
	        else
	        {
	        	response.sendRedirect("dietfeepay.jsp");
	        }
	        

	
}


      }catch(Exception e )
{
    	  e.printStackTrace();
}
%>

</body>
</html>