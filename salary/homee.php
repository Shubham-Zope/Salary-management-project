<?php
session_start();
 include('bootstrap.php');
 if (!isset($_SESSION['name'])){
   die('Not Logged in!');
 }

if ( isset($_SESSION['error']) ) {
    echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
    unset($_SESSION['error']);
}
if ( isset($_SESSION['success']) ) {
    echo '<p style="color:green">'.$_SESSION['success']."</p>\n";
    unset($_SESSION['success']);
}

  ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Home</title>
    <link rel="stylesheet" href="homee.css?v=<?php echo time(); ?>">

  </head>
  <body>
    <div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="viewdetails.php">View employ</a>
    <a href="leave.php">Leave Application</a>
	<a href="leaveremain.php">Leave Details</a>
    <a href="logout.php">Logout</a>
  </div>
  <div class="side">
       <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
  </div>
  <script>
  function openNav() {
    document.getElementById("mySidenav").style.width = "330px";
  }

  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }
  </script>
    <div class="heading">
      <center><h2>Employee details</h2></center>
    </div>
    <div class="para">
      Payroll is a critical operation for every organization to pay employee accurately their salary and enrollments on time.
The objective of the project is to computerize the payroll system which was earlier being handled manually, every precaution has been taken at each process involved in the complex process of the salary preparation.
Each section has to perform necessary operations like data collection and preparation, entry, updates, monitoring and reporting of data.
It is understood that we are tired of managing thousand of odd papers,  pay slip , payroll reports,  and  salary details  and so on.
Imagine that we have  a  payroll  processing system which  will  generate  our pay slips and payroll reports  within  seconds.
    </div>
  </body>
</html>
