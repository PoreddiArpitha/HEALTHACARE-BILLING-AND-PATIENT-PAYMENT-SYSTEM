<!DOCTYPE html> 
<html lang="en">
<head>
    <title>Hospital</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="js/jquery.js"></script> 
    <script src="js/jquery.glide.js"></script>
    
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/animate.css">
    <script type="text/javascript" src="js/MyJQ.js"></script>
    <script src="js/jquery.localScroll.min.js" type="text/javascript"></script>
    <script src="js/jquery.scrollTo.min.js" type="text/javascript"></script> 
    <script src="js/wow.min.js" type="text/javascript"></script> 

    <!-- Scroll Function -->
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
<body>

<!--============ Navigation ============-->
<div class="headerwrapper">
    <div id="header" class="container">
        <div class="logo"> 
            <a href="#"><img src="images/img8.png" alt="logo" width="165" height="74"></a> 
        </div> <!-- end of Logo -->

        <nav>
            <ul id="navigations">
                <li><a href="index.html">HOME</a></li>
                <li><a href="patientlogin.jsp">STUDENT</a></li>               
                <li><a href="#contactus">CONTACT</a></li>
                <li><a href="admin.jsp">ADMIN</a></li>
            </ul>
        </nav>
    </div> <!-- end of header -->
</div> <!-- end of headerwrapper -->

<!--============ Patient Registration Form ============-->
<form name="MYForm" action="patientreji.jsp" method="post">
    <center>
        <font face="algerian" size:5px>
            <h1 style="color:green">HOSPITAL PATIENT REGISTRATION FORM</h1>
        </font>
        <table>
            <tr>
                <td>PATIENT-ID:</td>
                <td><input type="text" id="pid" name="pid" readonly></td>
            </tr>
            <tr>
                <td>FIRST-NAME:</td>
                <td><input type="text" name="pfname" required></td>
            </tr>
            <tr>
                <td>LAST-NAME:</td>
                <td><input type="text" name="plname" required></td>
            </tr>
            <tr>
                <td>EMAIL:</td>
                <td><input type="email" name="pemail" required></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="ppsw" required></td>
            </tr>
            <tr>
                <td>ROLE:</td>
                <td>
                    <select name="pbranch">
                        <option value="PATIENT">PATIENT</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Mobile Number:</td>
                <td><input type="number" name="pno" required></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="REGISTER ME...!!!!!!!" style="background-color:pink">
    </center>
</form>

<!--============ Footer ============-->
<div class="footerwrapper" style="margin-top: 200px;">
    <footer class="container">
        <div class="customerreview">
            <h2>Customer Reviews</h2>
            <div class="review">
                <p><strong>&#8220; </strong>To attain value-based education, research, and technology of global standards enriched with quality contributing to national development.
                <strong>&#8221;</strong></p>
                <h4>- name</h4>
            </div> <!-- end of review -->
            <div class="review">
                <p><strong>&#8220; </strong>To provide value-based student-centric flexible education. To encourage innovation and research to benefit the community. <strong>&#8221;</strong></p>
                <h4>- name</h4>
            </div> <!-- end of review -->
        </div>

        <div class="socialize">
            <h2>Socialize</h2>
            <div class="socialimgs">
                <a href="https://www.facebook.com/Mido.HHH"><img src="images/fb.png" width="68" height="68" alt="fb"></a>
                <a href="https://twitter.com/Mido_A7X"><img src="images/twitter.png" width="68" height="68" alt="twitter"></a>
                <a href="#"><img src="images/youtube.png" width="68" height="69" alt="youtube"></a>
                <a href="#"><img src="images/g+.png" width="68" height="68" alt="google"></a>
                <a href="#"><img src="images/message.png" width="68" height="68" alt="message"></a>
            </div> <!-- end of social imgs -->
        </div>
    </footer> <!-- end of footer -->
</div> <!-- end of footer -->

<!--============ Copyrights ============-->
<div class="copyrightswrapper">
    <div id="copyrights" class="container">
        <p>Copyright 2016 <a href="https://www.facebook.com/Mido.HHH"> Hospital name </a> All Rights Reserved</p>
    </div> <!-- end of copyrights -->
</div> <!-- end of website -->

<!--============ JavaScript ============-->
<script>
    function generatePatientID() {
        let uniqueID = "PAT" + new Date().getFullYear() + Math.floor(1000 + Math.random() * 9000);
        document.getElementById("pid").value = uniqueID;
    }

    window.onload = function() {
        generatePatientID();
    };
</script>

<script type="text/javascript">
    $('.sliderwrapper .slider').glide({
        autoplay: 7000,
        animationDuration: 3000,
        arrows: true,
    });

    $('.bestdisheswrapper .slider').glide({
        autoplay: false,
        animationDuration: 700,
        arrows: true,
        navigation:false,
    });
</script>

</body>
</html>
