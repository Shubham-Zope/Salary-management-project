<?php
session_start();
 include('bootstrap.php');
include 'configall.php';
if (!isset($_SESSION['name'])){
  die('Not Logged in!');
}
if (isset($_POST['pay'])){
  $url=urlencode($_SESSION['user_id']);
  header("Location: paySlip.php?Employ_ID=$url");
  return;
}
if ( isset($_SESSION['error']) ) {
    echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
    unset($_SESSION['error']);
}
if ( isset($_SESSION['success']) ) {
    echo '<p style="color:green">'.$_SESSION['success']."</p>\n";
    unset($_SESSION['success']);
}
$stmt = $pdo->prepare("SELECT `addemploy`.*, `leavez`.*\n"

    . "FROM `addemploy` \n"

    . "	LEFT JOIN `leavez` ON `leavez`.`addemploy_Employ_ID` = `addemploy`.`Employ_ID` WHERE `leavez`.`addemploy_Employ_ID` = :xyz");
$stmt->execute(array(":xyz" => $_SESSION['user_id']));
$row = $stmt->fetch(PDO::FETCH_ASSOC);
if ( $row === false ) {
    $_SESSION['error'] = 'Bad value for user_id';
    header( 'Location: leavem.php' ) ;
    return;
}

$la = htmlentities($row['leaveapproval']);
$fn = htmlentities($row['fname']);
$ln = htmlentities($row['lname']);
$sl = htmlentities($row['sickleave']);
$cl = htmlentities($row['casualleave']);
$pl = htmlentities($row['paidleave']);
$el = htmlentities($row['earnleave']);
$e = htmlentities($row['email']);
$ph = htmlentities($row['phone']);
$a = htmlentities($row['addr']);
$ma = htmlentities($row['MainRole']);
$la = htmlentities($row['leaveapproval']);
 ?>
<!DOCTYPE html>
<html>
    <head>
        <title>View Details</title>
        <link rel="stylesheet" type="text/css" href="viewemploy.css?v=<?php echo time(); ?>">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
      <center><h2>Employee leave Details</h2></center>
    </div>
    <br><br><br>
    <div class="container">
      <table class="table table-hover" style="width:100%">
        <tr>
          <th>First name:</th>
          <td><?= $fn ?></td>
        </tr>
       
       
        <tr>
          <th>Last name:</th>
          <td><?= $ln ?></td>
        </tr>
        <tr>
          <th>Sick leave:</th>
          <td><?= $sl ?></td>
          </tr>
          <tr>
          <th>Casual leave:</th>
          <td><?= $cl ?></td>
        </tr>
        <tr>
          <th>Earned leave:</th>
          <td><?= $el ?></td>
        </tr>
        <tr>
          <th>Paid leave:</th>
          <td><?= $pl ?></td>
        </tr>
        <tr>
          <th>Email ID:</th>
          <td><?= $e ?></td>
        </tr>
        <tr>
          <th>Phone:</th>
          <td><?= $ph ?></td>
        </tr>
        <tr>
          <th>Address:</th>
          <td><?= $a ?></td>
        </tr>
        <tr>
          <th>Main Role:</th>
          <td><?= $ma ?></td>
        </tr>
		<tr>
		  <th>Leave approval</th>
		  <td><?= $la ?></td>
		</tr>
    </table>
  </table>
  </div>

    </body>
</html>
