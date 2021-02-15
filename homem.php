<?php
session_start();
if (!isset($_SESSION['name'])) {
    die('Not logged in');
}

if ( isset($_SESSION['error']) ) {
   echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
   unset($_SESSION['error']);
}
if ( isset($_SESSION['success']) ) {
   echo '<p style="color:green">'.$_SESSION['success']."</p>\n";
   unset($_SESSION['success']);
}
 include('bootstrap.php');?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Home</title>
    <link rel="stylesheet" href="homem.css?v=<?php echo time(); ?>">

  </head>
  <body>
    <div id="mySidenav" class="sidenav">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
      <a href="addemploy.php">Add new employee</a>
      <a href="viewemploy.php">View employee</a>
      <a href="leavem.php">Leave Requests</a>
      <a href="logout.php">Logout</a>
  </div>
  <div class="side">
    <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
  </div>

  <script>
  function openNav() {
    document.getElementById("mySidenav").style.width = "325px";
  }

  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }
  </script>
    <div class="heading">
      <center><h2>Management page</h2></center>
    </div>
    <div class="para">
      <p>Payroll is a critical operation for every organization to pay employee accurately their salary and enrollments on time.
The objective of the project is to computerize the payroll system which was earlier being handled manually, every precaution has been taken at each process involved in the complex process of the salary preparation.
Each section has to perform necessary operations like data collection and preparation, entry, updates, monitoring and reporting of data.
It is understood that we are tired of managing thousand of odd papers,  pay slip , payroll reports,  and  salary details  and so on.
Imagine that we have  a  payroll  processing system which  will  generate  our pay slips and payroll reports  within  seconds.
</p>
    </div>
  </body>
</html>
