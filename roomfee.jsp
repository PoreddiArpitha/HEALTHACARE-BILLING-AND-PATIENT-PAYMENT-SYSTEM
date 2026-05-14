<!DOCTYPE html>

<%@page import="lab.conn"%>
<%@page import="java.sql.*"%>
<html lang="en">
<head>
   <script src="js/jquery.js"></script> 
	<script src="js/jquery.glide.js"></script>
    <link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    
    <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="css/animate.css">
    <script type="text/javascript" src="js/MyJQ.js"></script>
    <script src="js/jquery.localScroll.min.js" type="text/javascript"></script>
	<script src="js/jquery.scrollTo.min.js" type="text/javascript"></script> 
    <script src="js/wow.min.js" type="text/javascript"></script> 





</head>
<body >

    
  
    
    
    
  
<div class="headerwrapper">
<div id="header" class="container" style="
    margin-right: 0px;
">
	 
		<div class="logo"> <a href="#"><img src="images/img8.png" alt="logo" width="165" height="74"></a> </div> <!--end of Logo-->

        <nav>
             <ul id="navigations">
             <li><a href="adminhome.jsp">HOME</a></li>
                           <li><a href="consfee.jsp"> CONSULTANCY FEE </a></li>            
                
               <li>   <a href="adsfee.jsp"> ADDMISSION -FEE</a></li>
                <li><a href="roomfee.jsp">ROOM CHARGES </a></li>
                
               <li> <a href="bedfee.jsp">BED CHARGES</a></li>
                    <li><a href="medifee.jsp">MEDICATION CHARGES</a></li>
  <li>                    <a href="nurfee.jsp">NURSING CHARGES </a></li>
  <li>    <a href="icufee.jsp"> ICU ROOM CHARGES</a></li>
    <li>  <a href="dietfee.jsp">DIETARY CHARGES</a></li>
    <li>  <a href="viewpatients.jsp">VIEW PATIENTS</a></li>
        <li>  <a href="admin.jsp">SIGN-OUT</a></li>
  
            </ul>
        </nav>
      </div> <!--end of header-->
</div> 

<center>
<h1 style="color:blue" >ROOM CHARGES FEES</h1>
<form action="roomfee.jsp" method="post">
 ROLE:
    <select name="prole">        
            <option value="PATIENT">PATIENT</option>
            
            
    </select>
    <input type="submit" value="check"/>
    
 </form>
 
</center>
<%

String prole=request.getParameter("prole");
System.out.print("prole"+prole);

%>




			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
						
							<tr>
								
								<th >SNO</th>
								
								<th >PATIENT-ID</th>
								<th >PATIENT-NAME</th>
								<th >ROLE</th>
								<th >DEPARTMENT</th>
								<th >MODE</th>
								<th >FEES- PAID	
								<th >STATUS</th>	
								

										
							</tr>
						</thead>
						<tbody>
	
												
<%
try{
	

Connection con=conn.myconn();
 
PreparedStatement ps=con.prepareStatement("select * from slibfee where sbranch='"+prole+"'" );
ResultSet rs=ps.executeQuery();


while(rs.next())
{

         
%>
						
								<tr>
									
								<th><%=rs.getString(1) %></th>
								<th><%=rs.getString(3) %></th>
								<th ><%=rs.getString(4) %></th>
								<th ><%=rs.getString(5) %></th>
						<th ><%=rs.getString(6) %></th>
						<th ><%=rs.getString(7) %></th>
						<th ><%=rs.getString(8) %></th>
						<th ><%=rs.getString(9) %></th>
										</tr>	
								<%}}catch(Exception e)



{
									e.printStackTrace();
									
}
%>	
							
								
							
						</tbody>
					</table>
				</div>
			</div>


	


	

</body>
</html>

