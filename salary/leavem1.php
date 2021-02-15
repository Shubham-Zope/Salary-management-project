<?php
session_start();
include'configall.php';
include'bootstrap.php';
if (!isset($_SESSION['name'])) {
    die('Not logged in');
}
if (isset($_POST['cancel'])) {
    // Redirect the browser to game.php
    header("Location: leavem.php");
    return;
}
if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['leave_days']) ){
if (strlen($_POST['name']) < 1 || strlen($_POST['email']) < 1 || strlen($_POST['leave_days']) < 1 )  {
    $_SESSION['error'] = 'All values are required';
    header("Location: leavem1.php?email=".$_POST['email']);
    return;
}

    if ( strpos($_POST['email'],'@') === false ) {
        $_SESSION['error'] = 'Bad data';
        header("Location: leavem1.php?email=".$_POST['email']);
        return;
    }





    $sql = "UPDATE `leave_app` SET `leave_approval`=:la WHERE `email`=:em";
$stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':la' => $_POST['leave_approval'],
        ':em' => $_POST['email'])
        );
    $_SESSION['success'] = 'Record Updated!!';
    header( 'Location: leavem.php' ) ;
    return;
}

// Guardian: Make sure that user_id is present
if ( ! isset($_GET['email']) ) {
  $_SESSION['error'] = "Missing user_id";
  header('Location: leavem.php');
  return;
}

$stmt = $pdo->prepare("SELECT * FROM `leave_app` WHERE `email`=:xyz");
$stmt->execute(array(":xyz" => $_GET['email']));
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

$la = htmlentities($row['leave_approval']);
$n = htmlentities($row['name']);
$ld = htmlentities($row['leave_days']);
$lr = htmlentities($row['leave_reason']);
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

	<div class="heading">
		<h1>Leave</h1>
	</div>
  <div class="overall">
    <form id="update" method="post" class="u-admin">
      <div class="name">
        <label for="name">Name:<span class="required">*</span></label><input type="text" name="name" value="<?= $n ?>" readonly ><br>
      </div>
      <div class="email">
        <label for="email">Email ID:<span class="required">*</span></label><input type="email" name="email" value="<?= $e ?>" readonly ><br>
      </div>
      <div class="l_d">
        <label for="leave_days">Number of days for leave :<span class="required">*</span></label><input type="number" name="leave_days" value="<?= $ld ?>" readonly ><br>
      </div>
      <div class="reason">
        <label for "leave_reason">Reason for leave(including date):<span class="required">*</span></label><textarea  name="leave_reason"value="<?= $lr ?>" readonly></textarea><br>
      </div>
      <div class="approve">
        <label for="leave_approval">Leave Approval:<span class="required">*</span></label><input type="text" name="leave_approval" value="<?= $la ?>"><br>
      </div>
      <br><br><br>
      <div class="bn">
        <button  class="btn btn-secondary" >Submit for approval</button>
  			<button type="submit" name="submit" class="btn btn-secondary" >Cancel</button>
      </div>
  	</form>
  </div>
</body>
</html>
