<?php
session_start();
include'configall.php';
include'bootstrap.php';
if (!isset($_SESSION['name'])) {
    die('Not logged in');
}
if (isset($_POST['cancel'])) {
    // Redirect the browser to game.php
    header("Location: homem.php");
    return;
}
if (isset($_POST['sickleave']) && isset($_POST['casualleave']) && isset($_POST['paidleave']) && isset($_POST['earnleave'])){
if (strlen($_POST['sickleave']) < 1 || strlen($_POST['casualleave']) < 1 || strlen($_POST['paidleave']) < 1 ||strlen($_POST['earnleave']) < 1 ||strlen($_POST['leavereason']) < 1)  {
    $_SESSION['error'] = 'All values are required';
    header("Location: leave.php");
    return;
}

    if ( strpos($_POST['email'],'@') === false ) {
        $_SESSION['error'] = 'Bad data';
        header("Location: leave.php");
        return;
    }
  if($_POST['leavet'] === 'sickleave'){
	$sql = "UPDATE `leavez` SET `reqleave` = :sl,`leavetype` = :ty, `leavereason` = :lr, `leaveapproval`=:la WHERE `leavez`.`addemploy_Employ_ID` = :xyza";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':sl' =>  $_POST['levea'],
        ':lr' => $_POST['leavereason'],
		':la' => $_POST['leaveapproval'],
		':ty' => $_POST['leavet'],
		':xyza' => $_SESSION['user_id']
      ));
    $_SESSION['success'] = 'Leave submitted !!';
    header( 'Location: viewdetails.php' ) ;
    return;
  }
  if($_POST['leavet'] === 'earnleave'){
	  $sql = "UPDATE `leavez` SET `reqleave` = :el,`leavetype` = :ty, `leaveapproval`=:la, `leavereason` = :lr WHERE `leavez`.`addemploy_Employ_ID` = :xyza";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':el' => $slle + $_POST['levea'],
        ':lr' => $_POST['leavereason'],
		':la' => $_POST['leaveapproval'],
		':ty' => $_POST['leavet'],
		':xyza' => $_SESSION['user_id']
      ));
    $_SESSION['success'] = 'Leave submitted !!';
    header( 'Location: viewdetails.php' ) ;
    return;
  }
  if($_POST['leavet'] === 'casualleave'){
	  $sql = "UPDATE `leavez` SET `reqleave` = :cl,`leavetype` = :ty, `leaveapproval`=:la, `leavereason` = :lr WHERE `leavez`.`addemploy_Employ_ID` = :xyza";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':cl' => $_POST['levea'],
        ':lr' => $_POST['leavereason'],
		':la' => $_POST['leaveapproval'],
		':ty' => $_POST['leavet'],
		':xyza' => $_SESSION['user_id']
      ));
    $_SESSION['success'] = 'Leave submitted !!';
    header( 'Location: viewdetails.php' ) ;
    return;
  }
}

// Flash pattern
if ( isset($_SESSION['error']) ) {
    echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
    unset($_SESSION['error']);
}
$stmt = $pdo->prepare("SELECT `addemploy`.*, `leavez`.*\n"

    . "FROM `addemploy` \n"

    . "	LEFT JOIN `leavez` ON `leavez`.`addemploy_Employ_ID` = `addemploy`.`Employ_ID` WHERE `leavez`.`addemploy_Employ_ID` = :xyz;");
$stmt->execute(array(":xyz" => $_SESSION['user_id']));
$row = $stmt->fetch(PDO::FETCH_ASSOC);
if ( $row === false ) {
    $_SESSION['error'] = 'Bad value for user_id';
    header( 'Location: leavem.php' ) ;
    return;
}

// Flash pattern
if ( isset($_SESSION['error']) ) {
    echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
    unset($_SESSION['error']);
}

$la = 'Pending approval';
$n = htmlentities($row['fname']);
$sl = htmlentities($row['sickleave']);
$cl = htmlentities($row['casualleave']);
$pl = htmlentities($row['paidleave']);
$el = htmlentities($row['earnleave']);
$e = htmlentities($row['email']);
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
	<link href="leave.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
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
		<h1>Leave</h1>
	</div>
  <div class="overall">
    <form id="update" method="post" class="u-admin">
      <div class="name">
        <label for="fname">Name:<span class="required">*</span></label><input type="text" name="name" value="<?= $n ?>" >
      </div>
      <br>
	  <br>
      <div class="email">
        <label for="email">Email ID:<span class="required">*</span></label><input type="email" name="email" value="<?= $e ?>" >
      </div>
	    <br>
	  <div class="alreadytaken">
	  <br><br>
    <hr>
	  <p>Leave already taken</p>
	  <br>
      <div class="l_d" style="display: inline;">
        <label for="leave_days" style="width: 110px;">Sick leave :<span>*</span></label><input type="number" name="sickleave" value="<?= 15 - $sl ?>" readonly>
      </div>
		<div class="l_d" style="display: inline;">
        <label for="leave_days">Earned leave :<span>*</span></label><input type="number" name="earnleave" value="<?= 15 - $el ?>" readonly>
      </div>
			<div class="l_d" style="display: inline;">
        <label for="leave_days">Casual leave :<span>*</span></label><input type="number" name="casualleave" value="<?= 15 - $cl ?>" readonly>
      </div>
			<div class="l_d" style="display: inline;">
        <label for="leave_days">Paid leave :<span>*</span></label><input type="number" name="paidleave" value="<?= $pl ?>" readonly>
      </div>
			<br>
		 </div>
       <div class="tobetaken">
	  <br><br>
    <hr>
	  <p>Leave to be taken</p>
	  <br>
      <div class="l_d" style="display: inline;">
        <label for="leave_days" style="width: 120px;">Sick leave :<span>*</span></label><input type="radio" name="leavet" value="sickleave">
      </div>
		<div class="l_d" style="display: inline;">
        <label for="leave_days" style="width: 120px;">Earned leave :<span>*</span></label><input type="radio" name="leavet" value="earnleave"">
      </div>
			<div class="l_d" style="display: inline;">
        <label for="leave_days" style="width: 120px;">Casual leave :<span>*</span></label><input type="radio" name="leavet" value="casualleave">
      </div>
	  <br><br>
    <hr>
	  <div class="l_d">
	  <label style="width: 220px;">Please enter your leaves: *<span class="required"></span></label>
	  <input type="number" name="levea" style="margin-left: 90px;">
	  </div>
			<br><br><br>
		 </div>			 
      <div class="reason">
        <label for "leave_reason">Reason for leave(including date):<span class="required">*</span></label><textarea  name="leavereason" ></textarea>
      </div>
		  <br>
      <div class="approve">
        <label for="leave_approval">Leave Approval:<span class="required">*</span></label><input type="text" name="leaveapproval" value="<?= $la ?>" readonly >
      </div>
			<br><br><br>
			<div class="leavebtn">
			<button type="submit" class="submit" style="border-radius: 10px; margin-right: 15px; background-color: green; color: white;">Request leave</button>
			</div>
			<div class="cancelleave">
			<button  name="submit" class="cancel" style="border-radius: 10px; background-color: red; color: white;">Cancel</button>
			</div>
  	</form>
  </div>
</body>
</html>
