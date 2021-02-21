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

  $sql = "INSERT INTO `leave_app`( `name`, `email`, `leave_days`, `leave_reason`) VALUES (:name,:email,:leave_days,:leave_reason)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':name' => $_POST['name'],
        ':email' => $_POST['email'],
        ':leave_days' => $_POST['leave_days'],
        ':leave_reason' => $_POST['leave_reason'],
      ));
    $_SESSION['success'] = 'Leave submitted !!';
    header( 'Location: viewdetails.php' ) ;
    return;
}

// Flash pattern
if ( isset($_SESSION['error']) ) {
    echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
    unset($_SESSION['error']);
}
$stmt = $pdo->prepare("SELECT `addemploy`.*, `leave`.*\n"

    . "FROM `addemploy` \n"

    . "	LEFT JOIN `leave` ON `leave`.`leave_id` = :xyz");
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

$la = htmlentities($row['leaveapproval']);
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
	  <p>Leave already taken</p>
	  <br>
      <div class="l_d" style="display: inline;">
        <label for="leave_days">Sick leave :<span class="required">*</span></label><input type="number" name="sickleave" value="<?= $sl ?>" readonly>
      </div>
		<div class="l_d" style="display: inline;">
        <label for="leave_days">Earned leave :<span class="required">*</span></label><input type="number" name="earnleave" value="<?= $el ?>" readonly>
      </div>
			<div class="l_d" style="display: inline;">
        <label for="leave_days">Casual leave :<span class="required">*</span></label><input type="number" name="casualleave" value="<?= $cl ?>" readonly>
      </div>
			<div class="l_d" style="display: inline;">
        <label for="leave_days">Paid leave :<span class="required">*</span></label><input type="number" name="paidleave" value="<?= $pl ?>" readonly>
      </div>
			<br>
		 </div>
       <div class="tobetaken">
	  <br><br>
	  <p>Leave to be taken</p>
	  <br>
      <div class="l_d" style="display: inline;">
        <label for="leave_days">Sick leave :<span class="required">*</span></label><input type="number" name="sick-leave"  >
      </div>
		<div class="l_d" style="display: inline;">
        <label for="leave_days">Earned leave :<span class="required">*</span></label><input type="number" name="earn-leave"  >
      </div>
			<div class="l_d" style="display: inline;">
        <label for="leave_days">Casual leave :<span class="required">*</span></label><input type="number" name="casual-leave" >
      </div>
			<div class="l_d" style="display: inline;">
        <label for="leave_days">Paid leave :<span class="required">*</span></label><input type="number" name="paid-leave" >
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
			<button  class="submit" >Request leave</button>
			</div>
			<div class="leavebtn">
			<button type="submit" name="submit" class="cancel" >Cancel</button>
			</div>
  	</form>
  </div>
</body>
</html>
