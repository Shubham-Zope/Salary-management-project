<?php
session_start();
 include('bootstrap.php');
include 'configall.php';
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
<html>
    <head>
        <title>View Details</title>
        <link rel="stylesheet" type="text/css" href="viewemploy.css?v=<?php echo time(); ?>">

    </head>
    <body>
      <div id="mySidenav" class="sidenav">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="addemploy.php">Add new employee</a>
        <a href="viewemploy.php">View employee</a>
        <a href="leavem.php">Leave Requests</a>
        <a href="logout.php">Logout</a>
    </div>
    <div class="bar">
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
      <center><h2>Leave Requests</h2></center>
    </div>
    <br><br><br>
    <div class="container">
      <?php  echo('<table class="table table-hover">'."\n");
    $stmt = $pdo->query("SELECT `addemploy`.*, `leave_app`.* FROM `addemploy` INNER JOIN `leave_app` ON `leave_app`.`email` = `addemploy`.`email`");
    while ( $row = $stmt->fetch(PDO::FETCH_ASSOC) ) {

        echo "<tr><td><li>";
        echo(htmlentities($row['name']));
        echo("</td><td>");
        echo(htmlentities($row['email']));
        echo("</td><td>");
        echo(htmlentities($row['leave_days']));
        echo("</td></tr>");
        echo "<tr><td>";
        echo(htmlentities($row['leave_reason']));
        echo("</td></tr>");
        echo "<tr><td>";
        echo(htmlentities($row['leave_approval']));
        echo("</td><td>");
        echo('<a href="leavem1.php?email='.$row['email'].'">Edit Leave Status</a>');
        echo("</li></td></tr>\n");
        echo("<tr><td>************************************************************************************</td></tr>\n");
    }
    ?>
  </div>

    </body>
</html>
