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



        $stmtt = $pdo->prepare("SELECT `addemploy`.*, `leavez`.*\n"

    . "FROM `addemploy` \n"

    . "	LEFT JOIN `leavez` ON `leavez`.`addemploy_Employ_ID` = `addemploy`.`Employ_ID` WHERE `leavez`.`addemploy_Employ_ID` = :xyzb");
		$stmtt->execute(array(":xyzb" => $_GET['id']));
		$roww = $stmtt->fetch(PDO::FETCH_ASSOC);
		if ( $roww === false ) {
			$_SESSION['error'] = 'Bad value for user_id';
			header( 'Location: leavem1.php' ) ;
			return;
		}
		$sllpl = htmlentities($roww['reqleave']);
			$scl = htmlentities($roww['casualleave']);
            $addscl = $sllpl + $scl;
            $ssl = htmlentities($roww['sickleave']);
            $addssl = $sllpl + $ssl;
            $sel = htmlentities($roww['earnleave']);
            $addsel = $sllpl + $sel;			
        if($roww['leavetype'] == 'casualleave'){		
		if($addscl > 15)
		{
			$addscl = $roww['paidleave'] + $addscl- 15;
            $sql = "UPDATE `leavez` SET `casualleave` = 15, `paidleave` = :cl, `leaveapproval` = :lr WHERE `leavez`.`addemploy_Employ_ID` = :xyza";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':cl' =>  $addscl,
        ':lr' => 'Accepted',
		':xyza' => $_GET['id']
      ));			
		}
		else if($addscl < 15){
	  $sql = "UPDATE `leavez` SET `casualleave` = :cl, `leaveapproval` = :lr WHERE `leavez`.`addemploy_Employ_ID` = :xyza";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':cl' =>  $addscl,
        ':lr' => 'Accepted',
		':xyza' => $_GET['id']
      ));
    $_SESSION['success'] = 'Leave submitted !!';
    header( 'Location: leavem.php' ) ;
    return;
  }			
 }
 if($roww['leavetype'] == 'sickleave'){		
		if($addssl > 15)
		{
			$addssl = $roww['paidleave'] + $addssl- 15;
            $sql = "UPDATE `leavez` SET `sickleave` = 15, `paidleave` = :cl, `leaveapproval` = :lr WHERE `leavez`.`addemploy_Employ_ID` = :xyza";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':cl' =>  $addssl,
        ':lr' => 'Accepted',
		':xyza' => $_GET['id']
      ));
$_SESSION['success'] = 'Leave submitted !!';
    header( 'Location: leavem.php' ) ;
    return;	  
		}
		else if($addssl < 15){
	  $sql = "UPDATE `leavez` SET `sickleave` = :cl, `leaveapproval` = :lr WHERE `leavez`.`addemploy_Employ_ID` = :xyza";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':cl' =>  $addssl,
        ':lr' => 'Accepted',
		':xyza' => $_GET['id']
      ));
    $_SESSION['success'] = 'Leave submitted !!';
    header( 'Location: leavem.php' ) ;
    return;
  }			
 }
 if($roww['leavetype'] == 'earnleave'){		
		if($addsel > 15)
		{
			$addsel = $roww['paidleave'] + $addsel- 15;
            $sql = "UPDATE `leavez` SET `earnleave` = 15, `paidleave` = :cl, `leaveapproval` = :lr WHERE `leavez`.`addemploy_Employ_ID` = :xyza";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':cl' =>  $addsel,
        ':lr' => 'Accepted',
		':xyza' => $_GET['id']
      ));			
		}
		else if($addsel < 15){
	  $sql = "UPDATE `leavez` SET `earnleave` = :cl, `leaveapproval` = :lr WHERE `leavez`.`addemploy_Employ_ID` = :xyza";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':cl' =>  $addsel,
        ':lr' => 'Accepted',
		':xyza' => $_GET['id']
      ));
    $_SESSION['success'] = 'Leave submitted !!';
    header( 'Location: leavem.php' ) ;
    return;
  }			
 }
}


// Guardian: Make sure that user_id is present
if ( ! isset($_GET['id']) ) {
  $_SESSION['error'] = "Missing user_id";
  header('Location: leavem.php');
  return;
}

$stmt = $pdo->prepare("SELECT `addemploy`.*, `leavez`.*\n"

    . "FROM `addemploy` \n"

    . "	LEFT JOIN `leavez` ON `leavez`.`addemploy_Employ_ID` = `addemploy`.`Employ_ID` WHERE `leavez`.`addemploy_Employ_ID`=:xyz");
$stmt->execute(array(":xyz" => $_GET['id']));
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
$ld = htmlentities($row['reqleave']);
$lr = htmlentities($row['leavereason']);
$ty = htmlentities($row['leavetype']);
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
	  <div class="l_d" style="display: inline;">
        <label for="leave_days">Sick leave :<span>*</span></label><input type="number" name="sickleave" value="<?= $sl ?>" readonly>
      </div>
		<div class="l_d" style="display: inline;">
        <label for="leave_days">Earned leave :<span>*</span></label><input type="number" name="earnleave" value="<?= $el ?>" readonly>
      </div>
			<div class="l_d" style="display: inline;">
        <label for="leave_days">Casual leave :<span>*</span></label><input type="number" name="casualleave" value="<?= $cl ?>" readonly>
      </div>
			<div class="l_d" style="display: inline;">
        <label for="leave_days">Paid leave :<span>*</span></label><input type="number" name="paidleave" value="<?= $pl ?>" readonly>
      </div>
      <div class="l_d">
        <label for="leave_days">Number of days for leave :<span class="required">*</span></label><input type="textarea" name="leave_type" value="<?= $ld ?>" readonly ><br>
      </div>
	  <div class="l_d">
        <label for="leave_type">Typeof leave :<span>*</span></label><input type="text" name="leave_days" value="<?= $ty ?>" readonly><br>
      </div>
      <div class="reason">
        <label for "leave_reason">Reason for leave(including date):<span class="required">*</span></label><textarea name="leavereason" readonly><?= $lr ?></textarea><br>
      </div>
      <div class="approve">
        <label for="leave_approval">Leave Approval:<span class="required">*</span></label><input type="text" name="leave_approval" value="<?= $la ?>"><br>
      </div>
      <br><br><br>
      <div class="bn">
        <button  type="submit" name="submit" class="btn btn-secondary" >Accept</button>
  			<button name="cancel" class="btn btn-secondary">Reject</button>
      </div>
  	</form>
  </div>
</body>
</html>
