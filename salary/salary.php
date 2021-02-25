<?php
include "configall.php";
include 'bootstrap.php';
session_start();
if (!isset($_SESSION['name'])) {
    die('Not logged in');
}
if (isset($_POST['cancel'])) {
    // Redirect the browser to game.php
    header("Location: homem.php");
    return;
}
extract($_POST);
if (isset($submit)){
	$id=$_GET['Employ_ID'];
	$ld=100*$lt;
	if($exp>'2' and $month==='7'){
		$inc = 0;
		$inc = ($exp-2)*2000;
	}
	else{
		$inc = 100;
	}
	$it = 0.05 * $b_salary;
	$g_salary=$b_salary+$hra+$ca+$lta+$da+$md+$sa+$inc;
	$n_salary=$b_salary+$hra+$ca+$lta+$da+$md+$sa-$it-$epf-$pt-$ld+$inc;
	

$sqll="BEGIN;
INSERT INTO `salary` (`b_salary`, `hra`, `lta`, `ca`, `da`, `md`, `sa`, `g_salary`, `epf`, `pt`, `it`, `lt`, `ld`, `n_salary`, `addemploy_Employ_ID`,`fromdate`,`todate`,`inc`) VALUES ('$b_salary', '$hra', '$lta', '$ca', '$da', '$md', '$sa', '$g_salary', '$epf', '$pt', '$it', '$lt', '$ld', '$n_salary', '$id','$fdate','$tdate','$inc');
UPDATE `leavez` SET `paidleave` = :pl WHERE `leavez`.`addemploy_Employ_ID` = :xyza;
COMMIT;";

$stmt = $pdo->prepare($sqll);

// execute the query
$stmt->execute(array(
        ':xyza' => $_GET['Employ_ID'],
        ':pl' => 0
      ));



$url=urlencode($_GET['Employ_ID']);
header("Location: paySlip.php?Employ_ID=$url");
// echo a message to say the UPDATE succeeded


}


$sql = "SELECT `addemploy`.*, `leavez`.*, `salary`.*\n"

    . "FROM `addemploy` \n"

    . "	LEFT JOIN `leavez` ON `leavez`.`addemploy_Employ_ID` = `addemploy`.`Employ_ID` \n"

    . "	LEFT JOIN `salary` ON `salary`.`addemploy_Employ_ID` = `addemploy`.`Employ_ID` WHERE `salary`.`addemploy_Employ_ID` = :xyz  ORDER BY `salary_ID` DESC";
$stmtt = $pdo->prepare($sql);
$stmtt->execute(array(
        ':xyz' => $_GET['Employ_ID']
      ));
$row = $stmtt->fetch(PDO::FETCH_ASSOC);
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
	
	
$b_salary = htmlentities($row['b_salary']);
$hra = htmlentities($row['hra']);
$lta = htmlentities($row['lta']);
$ca = htmlentities($row['ca']);
$da = htmlentities($row['da']);
$md = htmlentities($row['md']);
$sa = htmlentities($row['sa']);
$epf = htmlentities($row['epf']);
$pt = htmlentities($row['pt']);
$lt = htmlentities($row['paidleave']);
$fname = htmlentities($row['fname']);
$lname = htmlentities($row['lname']);
$desi = htmlentities($row['designation']);
$exp = htmlentities($row['exp']);
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Salary employee</title>
	<link href="salary.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
</head>

<body>

  <div class="heading">
  	<h1>Salary details</h1>
  </div>
	<div class="overall">
		<form id="i-salary" method="post">
		<div class="todate">
            <label for "fname">First Name:</label><input type="text" value="<?php echo @$fname; ?>" name="tdate"><br>
          </div>
		  <div class="todate">
            <label for "lname">Last Name:</label><input type="text" value="<?php echo @$lname; ?>" name="tdate"><br>
          </div>
		  <div class="todate">
            <label for "desig">Designation:</label><input type="text" value="<?php echo @$desi; ?>" name="tdate"><br>
          </div>
		   <div class="todate">
            <label for "exp">Exp:</label><input type="hidden" value="<?php echo @$exp; ?>" name="exp"><br>
          </div>
			<p>In Rupees</p>
			<fieldset>
				<fliedset>
          <div class="date">
            <label for "fromdate">From date:</label><input type="text" value="<?php echo @$fdate;?>" name="fdate"><br>
          </div>
          <div class="todate">
            <label for "todate">To date:</label><input type="text" value="<?php echo @$tnme;?>" name="tdate"><br>
          </div>
		  <div class="todate">
            <label for "month">Month:</label><input type="number" value="<?php echo @$month;?>" name="month"><br>
          </div>
				<div class="salary">
					<label for "b-salary">Basic Salary:</label><input type="number" value="<?php echo @$b_salary; ?>" name="b_salary"><br>
				</div>
				<fieldset id="allowances">
					<div class="allowances">
						<label for "hra">House Rent Allowance:</label><input type="number" value="<?php echo @$hra; ?>" name="hra"><label for "lta">Leave Travel Allowance:</label><input type="number" value="<?php  echo @$lta;?>" name="lta"><br>
						<label for "ca">Conveyance Allowance:</label><input type="number" value="<?php echo @$ca; ?>" name="ca">
					</div>
          <div class="dear">
            <label for "da">Dearness Allowance:</label><input type="number" value="<?php echo @$da; ?>" name="da"><br>
          </div>
					<div class="medical">
						<label for "ma">Medical Allowance:</label><input type="number" value="<?php  echo @$md; ?>" name="md"><label for "sa">Special Allowance:</label><input type="number" value="<?php  echo @$sa; ?>" name="sa"><br>
					</div>
				</fieldset>
				<div class="gross">
					<label for "g-salary">Gross Salary:</label><input type="number" name="g_salary" value="<?php echo @$g_salary;?>" readonly><br>
				</div>
				<fieldset id="deductions">
					<div class="deductions">
						<label for="epf">Employees' Provident Fund:</label><input type="number" value="<?php  echo @$epf; ?>" name="epf"><label for="pt">Professional Tax:</label><input type="number" value="<?php  echo @$pt; ?>" name="pt"><label for="it">Income Tax:</label><input type="number" value="<?php  echo @$it;?>" name="it"><br>
					</div>
				</fieldset>
				<br><br>
				<div class="salleave">
					<label for="lt">Leave Taken:</label><input type="number" value="<?php  echo @$lt; ?>" name="lt" ><label for="ld">Leave Deductions:</label><input type="number" value="<?php echo @$ld;?>" name="ld" readonly>
					<label for "n-salary">Net Salary:</label><input type="number" name="n_salary" value="<?php echo @$n_salary;?>" readonly><br>
				</div>
			</fieldset>
			<br><br>
			<button  type="submit" name="submit" >Confirm</button>
				<button name="cancel" class="cancel" >Cancel</button>
			</fliedset>
		</form>
	</div>
</body>
</html>
