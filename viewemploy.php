<?php
session_start();
include('bootstrap.php') ;
 include('configall.php');
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
    <title>View employee</title>
    <link rel="stylesheet" href="viewemploy.css?v=<?php echo time(); ?>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </head>
  <body>
    <div id="mySidenav" class="sidenav">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="addemploy.php">Add new employee</a>
        <a href="viewemploy.php">View employee</a>
        <a href="leavem.php">Leave Requests</a>
        <a href="logout.php">Logout</a>
  </div>
  <div class="side"
        <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
  <div>
  <script>
  function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
  }

  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }
  </script>
  <div class="heading">
    <center><h2>Employee Details</h2></center>
  </div>
  <br><br><br>
  <div class="container">
  <?php  echo('<table class="table table-hover">'."\n");
$stmt = $pdo->query("SELECT fname,lname, email, Employ_ID,MainRole FROM addemploy");
while ( $row = $stmt->fetch(PDO::FETCH_ASSOC) ) {
    echo "<tr><td>";
    echo(htmlentities($row['fname']));
    echo("</td><td>");
    echo(htmlentities($row['lname']));
    echo("</td><td>");
    echo(htmlentities($row['email']));
    echo("</td><td>");
    echo(htmlentities($row['MainRole']));
    echo("</td><td>");
    echo('<a href="edit.php?Employ_ID='.$row['Employ_ID'].'">Edit</a>  ');
    echo("</td><td>");
    echo('<a href="salary.php?Employ_ID='.$row['Employ_ID'].'">Update Salary</a>  ');
    echo("</td><td>");
    echo('<a href="showattendance.php?Employ_ID='.$row['Employ_ID'].'">Update Attendance</a>  ');
    echo("</td><td>");
    echo('<a href="empdeletetest.php?Employ_ID='.$row['Employ_ID'].'">Delete</a>');
    echo("</td></tr>\n");
}
?>
</table>
  </div>
  </body>
</html>
