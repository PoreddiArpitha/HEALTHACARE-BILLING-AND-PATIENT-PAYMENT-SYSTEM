<%@page import="java.sql.ResultSet"%>
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

   <script src="js/jquery.js"></script> 
	<script src="js/jquery.glide.js"></script>
    
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
	 
		<div class="logo"> <a href="#"><img src="images/img8.png" alt="logo" width="165" height="74"></a> </div> <!--end of Logo-->

        <nav>
             <ul id="navigations">
                  <li><a href="consfeepay.jsp">CONSULTATION FEE</a></li>
                      
                
               <li>   <a href="adsfeepay.jsp"> ADDMISSION FEE</a></li>
                <li><a href="roomfeepay.jsp">ROOM CHARGES </a></li>
                
               <li> <a href="bedfeepay.jsp">BED CHARGES</a></li>
                    <li> <a href="medifeepay.jsp">MEDICATION CHARGES	</a></li>
  <li>                    <a href="nurfeepay.jsp">NURSING CHARGES </a></li>
  <li>   <a href="icufeepay.jsp"> ICU ROOM CHARGES</a></li>
    <li>  <a href="dietfeepay.jsp">DIETARY CHARGES</a></li>
   
        <li>  <a href="patientlogin.jsp">SIGN-OUT</a></li>
  
  
            </ul>
        </nav>
      </div> <!--end of header-->
</div>

<div class="sliderwrapper">
      <div id="slider" class="container">
           <div class="slider">
      			<ul class="slides">
    		 	 	  <li class="slide">
                      	<h5 class="wow fadeInDown" data-wow-delay="0.8s">code</h5>
                      	<p class="wow fadeInUp" data-wow-delay="0.8s">Billing systems in a hospital or medical billing software automate the manual task of billing to ensure faster payment. This benefits providers by speeding up processing, improving workflow, and tracking patient information</p>
                      <img src="images/img5.jpeg" width="317" height="256" class="wow fadeInRight" 
                      data-wow-delay="0.8s" alt="slide1img"> 
                      </li>
      			 	  <li class="slide">
                      	<h5 class="wow fadeInDown" data-wow-delay="0.8s">HOSPITAL code</h5>
                      	<p class="wow fadeInUp" data-wow-delay="0.8s">Billing systems in a hospital or medical billing software automate the manual task of billing to ensure faster payment. This benefits providers by speeding up processing, improving workflow, and tracking patient information</p>
                      <img src="images/img6.jpeg" width="317" height="256" class="wow fadeInRight" 
                      data-wow-delay="0.8s" alt="slideimg2"> 
                      </li>
     			 	  <li class="slide">
                      	<h5 class=img src="images/img4.jpeg"></h5>
                      	<p class="wow fadeInUp" data-wow-delay="0.8s">Billing systems in a hospital or medical billing software automate the manual task of billing to ensure faster payment. This benefits providers by speeding up processing, improving workflow, and tracking patient information  </p>
                      <img src="images/img4.jpeg" width="317" height="256" class="wow fadeInRight" 
                      data-wow-delay="0.8s" alt="slideimg2"> 
                      </li>
        		  </ul>
            </div>
      </div> <!-- End of Slider-->
</div> <!-- end of sliderwrapper-->


<form  action="stablescon.jsp" method="post">
<center>
<font face="algerian" size:5px>
<h1 style="color:blue" >MEDICATION CHARGES FEE LIST..</h1>
</font>

<%HttpSession httpSession = request.getSession(true);
String pid = (String)httpSession.getAttribute("pid");
String sid1=null,name=null;
System.out.print("sidddddd"+pid);
Connection con=conn.myconn();
PreparedStatement pstm=con.prepareStatement("select * from patreji where  pid='"+pid+"'");
ResultSet rs=pstm.executeQuery();
while(rs.next())
{
	sid1=rs.getString(2);
	name=rs.getString(3)+rs.getString(4);
}
 %>
<table>
<tr><td>MEDICATION CHARGES CODE: </td><td><input type="text" name="id" value="9848" readonly="readonly"></td></tr>
<tr><td>PATIENT ID: </td><td><input type="text" name="pid" value=<%=sid1 %> readonly="readonly"></input></td></tr>
<tr><td>PATIENT NAME: </td><td><input type="text" name="pname" value=<%=name %> readonly="readonly"></input></td></tr>
<tr><td>ROLE : </td><td> <select name="prole">
                <option value="PATIENT">CSE</option>
                 
          </select></td></tr>
<tr><td>DEPARTMENT : </td><td> <select name=pdep>
                <option value="CASHER">CAHSER</option>
                 
          </select></td></tr>
<tr><td>MODE : </td><td> <select name="pmode">
                
                <option value="CASH">CASH</option>
                 
          </select></td></tr>
<tr><td>MEDICATION FEE : </td><td><input type="number" name="pmedfee"></input></td></tr>


</table><br></br>
<input type="submit" value="SUBMIT" style="background-color:white"></input>
</center>

</form>
<!--============ Contact us ============-->

      <!--end of .staff-->
        
    
    
    
    </div> 
    <!--contactus class-->
</div> <!-- end of contact wrapper-->


<!--============ FOOTER ============-->



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
            <form name="MY Form" action="tutionfee" method="post"">
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
