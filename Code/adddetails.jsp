<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Health Care Logistics</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="animate.css">
</head>
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
            <a href="technicianhome.html">Home</a>
        </li>

        <li>
            <a href="addcustomerdetails.html" class="active">Add Customer Details</a>
        </li>
        <li>
            <a href="logout.html">Logout</a>
        </li>
    </ul>
</nav>
<%

String tname = session.getAttribute("username").toString();                    
String username = request.getParameter("cname");                      
String types = request.getParameter("types");
String location = request.getParameter("location");
String cnumber = request.getParameter("mobile");
String date = request.getParameter("date");

%>
<!-- Login Form -->
<div class="form-div animated bounceInDown">
    <img src="img/user.png">
    <h2>Add Customer Details</h2>
    <form action="adddetailsact.html" method="post">
        <input type="text" placeholder="Name" readonly="" value="<%=username%>" name="cname" required="" autocomplete="off">
        <br>        
        <input type="text" placeholder="E-mail Id" value="<%=types%>" name="type" required="" autocomplete="off">
        <br>
       <select  name="stype" required="">
            <option value="" style="color: white">Select</option>
            <option value="Hair" style="color: white">Hair</option>
            <option value="Blood" style="color: white">Blood</option>
            <option value="Urine" style="color: white">Urine</option>
           
            
        </select>
        <br>
        <input type="text" placeholder="Cost" name="cost" required="" autocomplete="off">
        <br>
        <br>
        <input type="submit" value="Add">
        <br>
        <br>
    </form>
</div>
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