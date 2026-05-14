<!DOCTYPE html> 
<!--
    Free  Template by M.THARUN RAM
    https://www.facebook.com/Mido.HHH
-->
<html lang="en">
<head>
	<title>hospital code</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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


<script src="js/wow.min.js"></script>
<script>
new WOW().init();
</script>


</head>
<body onload="getCountry();getSecQue()">

<!--============ Navigation ============-->

<div class="headerwrapper">
	<div id="header" class="container">
	 
		<div class="logo"> <a href="#"><img src="images/img8.png" alt="logo" width="165" height="74"></a> </div> <!--end of Logo-->

        <nav>
             <ul id="navigations">
<li><a href="consfeepay.jsp">CONSULTATION FEE</a></li>
                      
                
               <li>   <a href="adsfeepay.jsp"> ADDMISSION FEE</a></li>
                <li><a href="roomfeepay.jsp">ROOM CHARGES </a></li>
                
               <li> <a href="bedfeepay.jsp">BED CHARGES</a></li>
                    <li> <a href="medifeepay.jsp">MEDICATION CHARGES</a></li>
  <li>                    <a href="nurfeepay.jsp">NURSING CHARGES </a></li>
  <li>   <a href="icufeepay.jsp"> ICU ROOM CHARGES</a></li>
    <li>  <a href="dietfeepay.jsp">DIETARY ROOM CHARGES</a></li>
 
        <li>  <a href="patientlogin.jsp">SIGN-OUT</a></li>
                    </ul>
        </nav>
      </div> <!--end of header-->
</div> <!-- end of headerwrapper-->




<form name="MY Form" action="carddetails.jsp" method="post"">
<!--<a href="Login.html">LOGIN</a>-->
<center>
<font face="algerian" size:5px>
<h1 style="color:blue" >PAYMENT...</h1>
</font>
<table>
<tr><td>Card Type: </td><td><select name="cardtype" ><option>visa</option>
<option>mastro card</option>
<option>rupe</option>
<option>master card</option>
</select></td></tr>
<tr><td>Card Number : </td><td><input  type="number" pattern="[0-9]{12}" name="cardnumber" required pattern="[1,16][0-9]"></input></td></tr>
<tr><td>Cvv Number: </td><td><input type="number" name="cvvnumber" 
    pattern="[0-1][0-9]-[0-9][0-9]" required></input></td></tr>
<tr><td>Patient Mobile: </td><td><input type="number" name="mobile" pattern="[789][0-9]{9}" required></input></td></tr>

</table>
<br></br>
<input type="submit" value="SUBMIT" style="background-color:white"></input>
<input type="submit" value="CANCEL" style="background-color:white"></input>
</center>

</form>
<!--============ Contact us ============-->

  
      <!--end of .staff-->
        
    
    
    
    </div> 
    <!--contactus class-->
</div> <!-- end of contact wrapper-->


<!--============ FOOTER ============-->


<div class="footerwrapper" style="margin-top: 100px;">
    <footer class="container">
    	<div class="customerreview">
       		 <h2>Customer Reviews</h2>
          <div class="review">
        	<p><strong>&#8220; </strong>To attain value based education, research and technology of global standards enriched with quality contributing to national development.
			Hospital targets the development of students in every aspect, while academics being the prime one. The success of ours is the success of our students.
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
    
 	   <p>Copyright 2016 <a href="https://www.facebook.com/Mido.HHH"> Hospital </a> All Rights Reserved</p>
    
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
