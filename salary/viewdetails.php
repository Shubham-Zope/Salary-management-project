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


if(isset($_POST['confirm']) && (strlen($_POST['pwd'])>1)){
	 $str1 = "XyZzy12*_".$_POST['pwd'];
    $p = md5($str1);
    $sql = "UPDATE `addemploy` set `Password` = :p  WHERE `Employ_ID` = :Employ_ID";
$stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':p' => $p,
      ':Employ_ID' => $_SESSION['user_id']));
    $_SESSION['success'] = 'Password Updated!!';
    header( 'Location: viewdetails.php' ) ;
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
$stmt = $pdo->prepare("SELECT * FROM addemploy where Employ_ID = :xyz");
$stmt->execute(array(":xyz" => $_SESSION['user_id']));
$row = $stmt->fetch(PDO::FETCH_ASSOC);
if ( $row === false ) {
    $_SESSION['error'] = 'Bad value for user_id';
    header( 'Location: viewdetails.php' ) ;
    return;
}

$fn = htmlentities($row['fname']);
$mn = htmlentities($row['mname']);
$ln = htmlentities($row['lname']);
$q = htmlentities($row['qualify']);
$b = htmlentities($row['blood']);
$em = htmlentities($row['email']);
$ph = htmlentities($row['phone']);
$ex = htmlentities($row['exp']);
$dp = htmlentities($row['department']);
$ds = htmlentities($row['designation']);
$a = htmlentities($row['addr']);
$ma = htmlentities($row['MainRole']);
$pa = htmlentities($row['Password']);
$employ = $row['Employ_ID'];
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
        <a href="leaveremain.php">Leave details</a>
        <a href="logout.php">Logout</a>
    </div>
    <div class="side">
         <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
    </div>

    <script>
    function openNav() {
      document.getElementById("mySidenav").style.width = "250px";
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    }
    </script>
	<style>
body {margin: 0;}

ul.topnav {
  list-style-type: none;
  margin: 0;
  margin-left: 200px;
  margin-right: 200px;
  margin-bottom: 50px;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}



ul.topnav li {float: left;}

ul.topnav li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

ul.topnav li a:hover:not(.active) {background-color: #111;}

ul.topnav li a.active {background-color: #4CAF50;}

ul.topnav li.right {float: right;}

@media screen and (max-width: 600px) {
  ul.topnav li.right, 
  ul.topnav li {float: none;}
}
</style>
</head>
<body>

<ul class="topnav">
  <li><a class="active" href="#det">Home</a></li>
  <li><a href="#view">View payslip</a></li>
  <li><a href="#pass">Edit password</a></li>
</ul>
    <div class="heading">
      <button class="head" style="background-color: white; border-radius: 20px; margin-left: 410px; width: 700px;"><center><h2>Employee Details</h2></center>
    </div>
    <br><br><br>
    <div class="container">
	<section id="det" style="background-color: #feffde">
      <table class="table table-hover" style="width:100%">
        <tr>
          <th>First name:</th>
          <td><?= $fn ?></td>
        </tr>
        <tr>
          <th>Middle name:</th>
          <td><?= $mn ?></td>
        </tr>
        <tr>
          <th>Last name:</th>
          <td><?= $ln ?></td>
        </tr>
        <tr>
          <th>Qualifications:</th>
          <td><?= $q ?></td>
          </tr>
          <tr>
          <th>Experience:</th>
          <td><?= $ex ?></td>
        </tr>
        <tr>
          <th>Department:</th>
          <td><?= $dp ?></td>
        </tr>
        <tr>
          <th>Designation:</th>
          <td><?= $dp ?></td>
        </tr>
        <tr>
          <th>Email ID:</th>
          <td><?= $em ?></td>
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



    </table>
  </table>
  </section>
  
  <hr>
  <section id="pass" style="background-color: #ddffbc">
  <br>
  <br>
  <form method="post">
  <label for="pass" style="margin-left: 30px;"><b>Edit password: </b></label><input type="password" name="pwd" style="margin-left: 10px;"></input>
  <br>
  <br>
  <button type="submit"  class="btn btn-primary" name="confirm" style="margin-left: 30px;">Confirm</button>
  </form>
  <br>
  <br>
   <br>
  </section>
  <hr>
  <section id="view" style="background-color: #feffde">
  <br><br><div class="view">
    <form method="post" ><button type="submit"  class="btn btn-secondary" name="pay" style="margin-left: 30px;">View Payslip</button></form>
  </div><br><br>
  </section>
  </div>

    </body>
</html>
