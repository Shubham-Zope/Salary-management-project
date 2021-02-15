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
if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['leave_days']) && isset($_POST['leave_reason'])){
if (strlen($_POST['name']) < 1 || strlen($_POST['email']) < 1 || strlen($_POST['leave_days']) < 1 ||strlen($_POST['leave_reason']) < 1)  {
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
        <label for="fname">Name:<span class="required">*</span></label><input type="text" name="name" placeholder="Full name" >
      </div>
      <br>
      <div class="email">
        <label for="email">Email ID:<span class="required">*</span></label><input type="email" name="email"  >
      </div>
	    <br>
      <br>
      <div class="l_d">
        <label for="leave_days">Number of days for leave :<span class="required">*</span></label><input type="number" name="leave_days">
      </div>
			<br><br>
      <div class="reason">
        <label for "leave_reason">Reason for leave(including date):<span class="required">*</span></label><textarea  name="leave_reason" ></textarea>
      </div>
		  <br>
      <div class="approve">
        <label for="leave_approval">Leave Approval:<span class="required">*</span></label><input type="text" name="leave_approval" readonly >
      </div>
			<br><br><br>
			<button  class="submit" >Request leave</button>
			<button type="submit" name="submit" class="cancel" >Cancel</button>
  	</form>
  </div>
</body>
</html>
