<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Health Care Logistics</title>
    <link rel="stylesheet" href="style.css">
</head>
 <%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Added Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Added Failed..!')</script>
 <%
}
%> 
<body>
<!-- Main Header -->
<header class="main-header">
    <img src="img/logo.png" alt="">
    <h1>Health Care Logistics</h1>
</header>
<!-- Dropdown Navbar -->
<nav>
    <ul>
        <li>
            <a href="index.html">Home</a>
        </li>
        <li class="dropdown">
            <a href="#">Add</a>
            <div class="dropdown_list">
                <a href="addequipments.html">Add Equipments</a>
                <a href="addtests.html">Add Tests</a>
            </div>
        </li>
        <li class="dropdown">
            <a href="#"  class="active">View</a>
            <div class="dropdown_list">
                <a href="viewequipments.html">View Equipments</a>
                <a href="viewtests.html">View Tests</a>
                <a href="viewtechnicians.html">View Technician</a>
                <a href="viewcustomers.html">View Customer</a>
                <a href="totaltests.html">Total Tests</a>
            </div>
        </li>
        <li>
            <a href="logout.html">Logout</a>
        </li>
    </ul>
</nav>




<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<br><br>
<center>
    <%
    
try{ 
    						
        Connection con = DbConnection.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from tests");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center> <table style="width:30%" border="1">
           
  <tr>
    
                <th bgcolor="pink">  Types of tests available</th>
               
                    
     
     </tr>

<%
       
   while(rs.next()){
     
            %><tr>
                <th><%=rs.getString(1)%></th>
             
                
                
                
                                
        </tr>
       
        
        
      <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
    
      
    
</center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<!-- Main Footer -->
<footer class="main-footer">
    <p>Developed & Maintained by
        <a href="https://www.1000projects.com/" target="_blank">
            <i class="fa fa-user-circle"></i> 1000 Projects
        </a>
    </p>
</footer>
</body>
</html>