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
	$g_salary=$b_salary+$hra+$ca+$lta+$da+$md+$sa;
	$ld=100*$lt;
	$n_salary=$b_salary+$hra+$ca+$lta+$da+$md+$sa-$it-$epf-$pt-$ld;

$sqll="BEGIN;
INSERT INTO `salary` (`b_salary`, `hra`, `lta`, `ca`, `da`, `md`, `sa`, `g_salary`, `epf`, `pt`, `it`, `lt`, `ld`, `n_salary`, `addemploy_Employ_ID`,`fromdate`,`todate`) VALUES ('$b_salary', '$hra', '$lta', '$ca', '$da', '$md', '$sa', '$g_salary', '$epf', '$pt', '$it', '$lt', '$ld', '$n_salary', '$id','$fdate','$tdate');
COMMIT;";

// Prepare statementh
$stmt = $pdo->prepare($sqll);

// execute the query
$stmt->execute();
$url=urlencode($_GET['Employ_ID']);
header("Location: paySlip.php?Employ_ID=$url");
// echo a message to say the UPDATE succeeded


}
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
			<p>In Rupees</p>
			<fieldset>
				<fliedset>
          <div class="date">
            <label for "fromdate">From date:</label><input type="text" value="<?php echo @$fdate;?>" name="fdate"><br>
          </div>
          <div class="todate">
            <label for "todate">To date:</label><input type="text" value="<?php echo @$tnme;?>" name="tdate"><br>
          </div>
				<div class="salary">
					<label for "b-salary">Basic Salary:</label><input type="number" value="<?php echo @$b_salary;?>" name="b_salary"><br>
				</div>
				<fieldset id="allowances">
					<div class="allowances">
						<label for "hra">House Rent Allowance:</label><input type="number" value="<?php  echo @$hra;?>" name="hra"><label for "lta">Leave Travel Allowance:</label><input type="number" value="<?php  echo @$lta;?>" name="lta"><br>
						<label for "ca">Conveyance Allowance:</label><input type="number" value="<?php  echo @$ca;?>" name="ca">
					</div>
          <div class="dear">
            <label for "da">Dearness Allowance:</label><input type="number" value="<?php  echo @$da;?>" name="da"><br>
          </div>
					<div class="medical">
						<label for "ma">Medical Allowance:</label><input type="number" value="<?php  echo @$md;?>" name="md"><label for "sa">Special Allowance:</label><input type="number" value="<?php  echo @$sa;?>" name="sa"><br>
					</div>
				</fieldset>
				<div class="gross">
					<label for "g-salary">Gross Salary:</label><input type="number" name="g_salary" value="<?php echo @$g_salary;?>" readonly><br>
				</div>
				<fieldset id="deductions">
					<div class="deductions">
						<label for="epf">Employees' Provident Fund:</label><input type="number" value="<?php  echo @$epf;?>" name="epf"><label for="pt">Professional Tax:</label><input type="number" value="<?php  echo @$pt;?>" name="pt"><label for="it">Income Tax:</label><input type="number" value="<?php  echo @$it;?>" name="it"><br>
					</div>
				</fieldset>
				<br><br>
				<div class="salleave">
					<label for="lt">Leave Taken:</label><input type="number" value="<?php  echo @$lt;?>" name="lt" ><label for="ld">Leave Deductions:</label><input type="number" value="<?php echo @$ld;?>" name="ld" readonly>
					<label for "n-salary">Net Salary:</label><input type="number" name="n_salary" value="<?php echo @$n_salary;?>" readonly><br>
				</div>
			</fieldset>
			<br><br>
			<button  name="submit" >Confirm</button>
				<button type="submit" name="cancel" class="cancel" >Cancel</button>
			</fliedset>
		</form>
	</div>
</body>
</html>
