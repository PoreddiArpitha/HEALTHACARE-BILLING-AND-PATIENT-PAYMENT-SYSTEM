<!DOCTYPE html>

<%@page import="java.sql.*"%>
<html lang="en">
<head>
    <style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    right: 0;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
.table
{
position: relative;
left: 250px;

}

</style>
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


<div class="headerwrapper">
	<div id="header" class="container">
	 
		<div class="logo"> <a href="#"><img src="images/img8.png" alt="logo" width="165" height="74"></a> </div> <!--end of Logo-->

        <nav>
             <ul id="navigations">
                <li><a href="index.jsp">HOME</a></li>
                <li><a href="patientlogin.jsp">PATIENT</a></li>
               <li> <a href="#slider">ABOUT</a></li>
                <li><a href="#contactus">CONTACT</a></li>
                <li><a href="admin.jsp">ADMIN</a></li>
            </ul>
        </nav>
      </div> <!--end of header-->
</div> 
			

<div class="sliderwrapper">
      <div id="slider" class="container">
           <div class="slider">
      			<ul class="slides">
    		 	 	  <li class="slide">
                      	<h5 class="wow fadeInDown" data-wow-delay="0.8s"> HOSPITAL code</h5>
                      	<p class="wow fadeInUp" data-wow-delay="0.8s">Billing systems in a hospital or medical billing software automate the manual task of billing to ensure faster payment. This benefits providers by speeding up processing, improving workflow, and tracking patient information.</p>
                      <img src="images/img4.jpeg" width="317" height="256" class="wow fadeInRight" 
                      data-wow-delay="0.8s" alt="slide1img"> 
                      </li>
      			 	  <li class="slide">
                      	<h5 class="wow fadeInDown" data-wow-delay="0.8s">HOSPITAL code</h5>
                      	<p class="wow fadeInUp" data-wow-delay="0.8s">Billing systems in a hospital or medical billing software automate the manual task of billing to ensure faster payment. This benefits providers by speeding up processing, improving workflow, and tracking patient information.</p>
                      <img src="images/img4.jpeg" width="317" height="256" class="wow fadeInRight" 
                      data-wow-delay="0.8s" alt="slideimg2"> 
                      </li>
     			 	  <li class="slide">
                      	<h5 class=img src="images/img4.jpeg"></h5>
                      	<p class="wow fadeInUp" data-wow-delay="0.8s">hospital provides special events for the benefit of the patients from time to time.
						These include lectures from the great people (who are masters in their fields), industrial tours,
						Personality Development sessions, technical and cultural fests, and Seminars, Conferences and Workshops of national level.       </p>
                      <img src="images/img4.jpeg" width="317" height="256" class="wow fadeInRight" 
                      data-wow-delay="0.8s" alt="slideimg2"> 
                      </li>
        		  </ul>
            </div>
      </div> <!-- End of Slider-->
</div> 

			</div>
		</div>
	</div>


<form name="MY Form" action="adminlogin.jsp" method="post"">
<!--<a href="Login.html">LOGIN</a>-->
<center>
<font face="algerian" size:5px>
<h1 style="color:blue" >ADMIN LOGIN...</h1>
</font>
<table>
<tr><td>USER NAME : </td><td><input  type="text"  name="admin" ></input></td></tr>
<tr><td>PASSWORD: </td><td><input type="password" name="admin" ></input></td></tr>

</table>
<br></br>
<input type="submit" value="SUBMIT" style="background-color:white"></input>
<input type="submit" value="CANCEL" style="background-color:white"></input>
</center>

</form>
	

</body>
</html>




