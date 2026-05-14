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
   <title>View Patients</title>
</head>
<body>

<div class="headerwrapper">
   <div id="header" class="container" style="margin-right: 0px;">
      <div class="logo"> <a href="#"><img src="images/img8.png" alt="logo" width="165" height="74"></a> </div>
      <nav>
         <ul id="navigations">
            <li><a href="adminhome.jsp">HOME</a></li>
            <li><a href="consfee.jsp">CONSULTANCY FEE</a></li>            
            <li><a href="adsfee.jsp">ADDMISSION FEE</a></li>
            <li><a href="roomfee.jsp">ROOM CHARGES</a></li>
            <li><a href="bedfee.jsp">BED CHARGES</a></li>
            <li><a href="medifee.jsp">MEDICATION CHARGES</a></li>
            <li><a href="nurfee.jsp">NURSING CHARGES</a></li>
            <li><a href="icufee.jsp">ICU ROOM CHARGES</a></li>
            <li><a href="dietfee.jsp">DIETARY ROOM CHARGES</a></li>
            <li><a href="viewpatients.jsp">VIEW PATIENTS</a></li>
            <li><a href="admin.jsp">SIGN-OUT</a></li>
         </ul>
      </nav>
   </div>
</div>

<div class="container">
   <h2>Patient Records</h2>
   <table border="1" width="100%">
      <tr>
         <th>Patient ID</th>
         <th>First Name</th>
         <th>Last Name</th>
         <th>Email</th>
         <th>Role</th> 
         <th>Phone Number</th>
      </tr>
      <% 
         Connection con = null;
         Statement stmt = null;
         ResultSet rs = null;
         try {
            con = conn.myconn();
            stmt = con.createStatement();
            String query = "SELECT pid, pfname, plname, pemail, pbranch, pno FROM patreji";
            rs = stmt.executeQuery(query);
            while (rs.next()) {
      %>
      <tr>
         <td><%= rs.getString("pid") %></td>
         <td><%= rs.getString("pfname") %></td>
         <td><%= rs.getString("plname") %></td>
         <td><%= rs.getString("pemail") %></td>
         <td><%= rs.getString("pbranch") %></td>
         <td><%= rs.getString("pno") %></td>
      </tr>
      <% 
            }
         } catch (Exception e) {
            e.printStackTrace();
         } finally {
            if (rs != null) try { rs.close(); } catch (SQLException e) {}
            if (stmt != null) try { stmt.close(); } catch (SQLException e) {}
            if (con != null) try { con.close(); } catch (SQLException e) {}
         }
      %>
   </table>
</div>

</body>
</html>
