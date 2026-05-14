<!DOCTYPE html> 
<!--
    Free  Template by M.THARUN RAM
    https://www.facebook.com/Mido.HHH
-->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="lab.conn"%>
<%@page import="java.sql.Connection"%>
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

<!-- scroll function -->
<script type="text/javascript">
$(document).ready(function() {
   $('#navigations').localScroll({duration:800});
});
</script>




</head>
<body onload="getCountry();getSecQue()">

<!--============ Navigation ============-->

  
<div class="headerwrapper">
<div id="header" class="container" style="
    margin-right: 0px;
">
	 
		<div class="logo"> <a href="#"><img src="img/svist.jpg" alt="logo" width="165" height="74"></a> </div> <!--end of Logo-->

        <nav>
             <ul id="navigations">
             <li><a href="consfeepay.jsp">JNTU</a></li>
             <li> <a href="tutionfeepay.jsp">TUTION</a></li>            
                
               <li>   <a href="adsfeepay.jsp"> BUS</a></li>
                <li><a href="roomfeepay.jsp">LIBRARY </a></li>
                
               <li> <a href="bedfee.jsp">PROJECT</a></li>
                    <li> <a href="medifeepay.jsp">SAC</a></li>
  <li>                    <a href="nurfeepay.jsp">SPORTS </a></li>
  <li>   <a href="icufeepay.jsp"> EXAM</a></li>
    <li>  <a href="dietfeepay.jsp">CONDONATION</a></li>
     <li>  <a href="sfeelist.jsp">FEES PAID</a></li>
        <li>  <a href="patientlogin.jsp">SIGN-OUT</a></li>
  
            </ul>
        </nav>
      </div> <!--end of header-->
</div>

<center>

<h1 style="color:blue" >STUDENT FEE LIST</h1>
<form action="sfeelist.jsp" method="post">
 DEPARTMENT:
    <select name="fees">        
            <option value="JNTU">JNTU</option>
            <option value="TUTION">TUTION</option>
            <option value="BUS">BUS</option>
            <option value="LIBRARY">LIBRARY</option>
            <option value="PROJECT">PROJECT</option>
            <option value="SAC">SAC</option>
             <option value="SPORTS">SPORTS</option>
             <option value="CONDONATION">CONDONATION</option>
    </select>
    <input type="submit" value="check"/>
    
 </form>
 
 <%
 String fees=request.getParameter("fees");
 System.out.print("VLAUE:"+fees);
 
 
 %>

  


			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
						
							<tr>
								
								<th >ID</th>
								<th >NAME</th>
								<th >BRANCH</th>
									<th >YEAR</th>
										<th >SEMISTER</th>
										<th><%=fees %></th>
								<th >STATUS</th>	
								

										
							</tr>
						</thead>
						<tbody>
							<%
							
							try{
								if(fees.equalsIgnoreCase("sjntufee"))
								{
							 String sid=request.getParameter("sid");
							Connection con= conn.myconn();
							PreparedStatement pstm =con.prepareStatement("select * from sjntufee");
							ResultSet rs = pstm.executeQuery();
							
							
							while( rs.next() )
								
							{
								
								 %>
								 <tr>
								 
								<th><%=rs.getString(3) %></th>
								<th ><%=rs.getString(4) %></th>
								<th ><%=rs.getString(5) %></th>
								<th ><%=rs.getString(6) %></th>
								<th ><%=rs.getString(7) %></th>
								<th ><%=rs.getString(9) %></th>
								
								
								
								 </tr>
								 
								  
								 <%
								 
								 }
							}
													 
							
							
							}catch(Exception e)
							{
								 e.printStackTrace();
							}
							%>
							
												
							
						</tbody>
					</table>
				</div>
			</div>


	




</center>


<div class="footerwrapper" style="
    margin-top: 100px;
">
    <footer class="container">
    	<div class="customerreview">
       		 <h2>Customer Reviews</h2>
          <div class="review">
        	<p><strong>&#8220; </strong>To attain value based education, research and technology of global standards enriched with quality contributing to national development.
			Hospital name targets the development of students in every aspect, while academics being the prime one. The success of ours is the success of our students.
            <strong>&#8221;</strong></p>
             
             <h4>- name</h4>
                   	</div> <!-- end of review-->
             
              <div class="clearfix"></div>
              <div class="line"></div>
              
          <div class="review">
        	<p><strong>&#8220; </strong>	To provide value based student centric flexible education.
	To encourage innovation and research to benefit the community.To challenge the employability

  
            <strong>&#8221;</strong></p>
             
             <h4>- name</h4>
            
            
        	</div> <!-- end of review-->
             
              
              
            
            
        </div>
        <div class="socialize">
        
      <h2>Socialize</h2>
        <div class="socialimgs">
          <a href="https://www.facebook.com/Mido.HHH"><img src="images/fb.png" width="68" height="68" class="facebook"
           alt="fb"></a>
        <a href="https://twitter.com/Mido_A7X"><img src="images/twitter.png" width="68" height="68" class="twitter"
        alt="twitter"></a>
        <a href="#"><img src="images/youtube.png" width="68" height="69" class="youtube" alt="youtube"></a>
        <a href="#"><img src="images/g+.png" width="68" height="68" class="google" alt="g+"></a>
          <a href="#"><img src="images/message.png" width="68" height="68" class="message" alt="message"></a>
      </div> <!--end of social imgs-->
      
       </div>
      
      
<div class="sendfeedback">
  	  <h2>Send Feedback</h2>
            <form>
            <h6>Your Name:</h6>
            <input type="text" class="yourname" >
             <h6>Mobile Number :</h6>
            <input type="text" class="mobilenumber">
             <h6>Message :</h6>
            <textarea></textarea>
            
            <button>SUBMIT </button>
            
            
            
            </form>
        
        </div> <!-- end of feedback-->
        
    
    
    
    </footer> <!-- end of footer-->

</div> <!-- end of footer-->




<!--============ COPYRIGHTS ============-->


<div class="copyrightswrapper">
    <div id="copyrights" class="container">
    
 	   <p>Copyright 2016 <a href="https://www.facebook.com/Mido.HHH"> Hospital name </a> All Rights Reserved</p>
    
    </div> <!-- end of copyrights-->
</div> <!-- end of website-->
	




<script type="text/javascript">
    $('.sliderwrapper .slider').glide({
		autoplay: 7000,
		animationDuration: 3000,
		arrows: true,
		
		
	
		});
	
</script>
	
    <script type="text/javascript">
    $('.bestdisheswrapper .slider').glide({
		autoplay: false,
		animationDuration: 700,
		arrows: true,
		navigation:false,
		
		
	
		});
	
	
</script>
	
   
   

</body>

</html>
