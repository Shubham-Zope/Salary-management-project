<?php
include "configall.php";
include "bootstrap.php";
session_start();
if (!isset($_SESSION['name'])) {
    die('Not logged in');
}

if (isset($_POST['fname']) && isset($_POST['mname']) && isset($_POST['lname']) && isset($_POST['email']) && isset($_POST['phone'])&& isset($_POST['department'])&& isset($_POST['designation'])&& isset($_POST['m']) && isset($_POST['addr'])&& isset($_POST['Employ_ID'])){
if (strlen($_POST['fname']) < 1 || strlen($_POST['lname']) < 1 || strlen($_POST['email']) < 1 ||strlen($_POST['phone']) < 1||strlen($_POST['department']) < 1||strlen($_POST['designation']) < 1||strlen($_POST['m']) < 1||strlen($_POST['addr']) < 1)  {
    $_SESSION['error'] = 'All values are required';
    header("Location: edit.php?Employ_ID=".$_POST['Employ_ID']);
    return;
}

    if ( strpos($_POST['email'],'@') === false ) {
        $_SESSION['error'] = 'Bad data';
        header("Location: edit.php?Employ_ID=".$_POST['Employ_ID']);
        return;
    }
$p="1a52e17fa899cf40fb04cfc42e6352f1";
    $sql = "UPDATE `addemploy` SET `fname` = :fname,`mname`= :mname,`lname` = :lname,`qualify` = :qualify,`blood` = :blood,`email` = :email,`phone` = :phone, `exp` = :exp,`department` = :department,`designation` = :designation,`addr` = :addr,`MainRole` = :m,`Password` = :p  WHERE `Employ_ID` = :Employ_ID";
$stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':fname' => $_POST['fname'],
        ':mname' => $_POST['mname'],
        ':lname' => $_POST['lname'],
        ':qualify' => $_POST['qualify'],
        ':blood' => $_POST['blood'],
        ':email' => $_POST['email'],
        ':phone' => $_POST['phone'],
        ':exp' => $_POST['exp'],
        ':department' => $_POST['department'],
        ':designation' => $_POST['designation'],
        ':addr' => $_POST['addr'],
        ':m' => $_POST['m'],
        ':p' => $p,
      ':Employ_ID' => $_POST['Employ_ID']));
    $_SESSION['success'] = 'Record Updated!!';
    header( 'Location: viewemploy.php' ) ;
    return;
}

// Guardian: Make sure that user_id is present
if ( ! isset($_GET['Employ_ID']) ) {
  $_SESSION['error'] = "Missing user_id";
  header('Location: viewemploy.php');
  return;
}

$stmt = $pdo->prepare("SELECT * FROM addemploy where Employ_ID = :xyz");
$stmt->execute(array(":xyz" => $_GET['Employ_ID']));
$row = $stmt->fetch(PDO::FETCH_ASSOC);
if ( $row === false ) {
    $_SESSION['error'] = 'Bad value for user_id';
    header( 'Location: viewemploy.php' ) ;
    return;
}

// Flash pattern
if ( isset($_SESSION['error']) ) {
    echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
    unset($_SESSION['error']);
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
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
	<link href="style2.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
</head>

<body>

	<div class="heading">
		<h1>Edit employee details</h1>
	</div>
  <div class="overall">
    <form id="update" method="post" class="u-admin">
  		<fieldset>
  			<div class="name">
  				<label for="fname">First name:</label><input type="text" name="fname" placeholder="Your name" value="<?= $fn ?>">
  				<label for="fname">Middle name(if any):</label><input type="text" name="mname" placeholder="Middle name " value="<?= $mn ?>">
  				<label for="fname">Last name:</label><input type="text" name="lname" placeholder="Surname" value="<?= $ln ?>"><br>
  			</div>
  			<fieldset id="personaldetails">
  				<div class="blood">
  					<label for="qualify">Qualifications:</label><input type="text" name="qualify" value="<?= $q ?>">
  					<label for="blood">Blood Group:</label><input type="text" name="blood" value="<?= $b ?>"><br>
  				</div>
  			</fieldset>
  			<div class="details">
  				<label for="email">Email ID:</label><input type="email" name="email" value="<?= $em ?>" ><br>
  				<label for="phone">Phone number:</label><input type="tel" name="phone" value="<?= $ph ?>"><br>
  				<label for="exp">Experience:</label><input type="text" name="exp" value="<?= $ex ?>"><br>
  			</div>
  			<div class="department">
          <label for="deptmnt" >Department:<span class="required">*</span></label>
  				<input type="text" name="department" value="<?= $dp ?>">
  				<label for "desgntn">Designation:<span class="required">*</span></label>
  				<input type="text" name="designation" value="<?= $ds ?>">
  			</div>
  		 <br>
  		 <div class="address">
         <label for "m">Main Role: <span class="required">*</span></label><input type="text" name="m" value="<?= $ma ?>">
  			 <label for "address">Permanent Address:</label><textarea class="addr" name="addr" value="<?= $a ?>"></textarea><br>

  		 </div>
  			<br>
        <input type="hidden" name="Password" value="<?= $pa ?>">
        <input type="hidden" name="Employ_ID" value="<?= $employ ?>">
  			<button class="submit" >Update Details</button>
  			<button type="submit" formaction="viewemploy.php" class="cancel" >Cancel</button>
  		</fieldset>
  	</form>
  </div>
</body>
</html>
