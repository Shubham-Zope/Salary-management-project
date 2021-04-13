<?php
session_start();
include('bootstrap.php');
include('configall.php');
if (!isset($_SESSION['name'])){
  die('Not Logged in!');
}
if ( isset($_SESSION['error']) ) {
    echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
    unset($_SESSION['error']);
}
if ( isset($_SESSION['success']) ) {
    echo '<p style="color:green">'.$_SESSION['success']."</p>\n";
    unset($_SESSION['success']);
}
$stmt = $pdo->prepare("SELECT `addemploy`.*, `salary`.*
FROM `addemploy`
	INNER JOIN `salary` ON `salary`.`addemploy_Employ_ID` = `addemploy`.`Employ_ID` WHERE `salary`.`addemploy_Employ_ID`=:xyz ORDER BY `salary_ID` DESC");
$stmt->execute(array(":xyz" => $_GET['Employ_ID']));
$row = $stmt->fetch(PDO::FETCH_ASSOC);
if ( $row === false ) {
    $_SESSION['error'] = 'Bad value for user_id';
    header( 'Location: intro.php' ) ;
    return;
}
$fdate=htmlentities($row['fromdate']);
$tdate=htmlentities($row['todate']);
$fn = htmlentities($row['fname']);
$mn = htmlentities($row['mname']);
$em = htmlentities($row['email']);
$ln = htmlentities($row['lname']);
$dp = htmlentities($row['department']);
$ds = htmlentities($row['designation']);
$b_salary = htmlentities($row['b_salary']);
$hra = htmlentities($row['hra']);
$lta = htmlentities($row['lta']);
$ca = htmlentities($row['ca']);
$da = htmlentities($row['da']);
$md = htmlentities($row['md']);
$sa = htmlentities($row['sa']);
$g_salary = htmlentities($row['g_salary']);
$epf = htmlentities($row['epf']);
$pt = htmlentities($row['pt']);
$it = htmlentities($row['it']);
$lt = htmlentities($row['lt']);
$ld = htmlentities($row['ld']);
$n_salary = htmlentities($row['n_salary']);
$si = htmlentities($row['salary_ID']);
$employ = $row['Employ_ID'];
$name=$fn.' '.$mn.' '.$ln;
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>PaySlip</title>
	<link href="payslip.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="heading">
		<h1>Pay slip</h1>
	</div>
	<br><br><br>
	<div class="container">
		<div class="salary-slip" >
		<table class="table table-hover">
			<tr>
				<th>Salary Receipt:</th>
				<td><?= $si ?></td>
			</tr>
			<tr>
				<th>Name:</th>
				<td><?= $name ?></td>
			</tr>
      <tr>
				<th>From Date: </th>
				<td><?= $fdate ?></td>

        <th>To Date: </th>
        <td><?= $tdate ?></td>
			</tr>
			<tr>
				<th>Department:</th>
				<td><?= $dp ?></td>
				<th>Designation:</th>
				<td><?= $ds ?></td>
			</tr>
			<tr>
				<th>Basic Salary:</th>
				<td><?= $b_salary ?></td>
			</tr>
			<tr>
				<th>House Rent Allowance:</th>
				<td><?= $hra ?></td>
				<th>Leave Travel Allowance:</th>
				<td><?= $lta ?></td>
			</tr>
			<tr>
				<th>Conveyance Allowance:</th>
				<td><?= $ca ?></td>
				<th>Dearness Allowance:</th>
				<td><?= $da ?></td>
			</tr>
			<tr>
				<th>Medical Allowance:</th>
				<td><?= $md ?></td>
				<th>Special Allowance:</th>
				<td><?= $sa ?></td>
			</tr>
			<tr>
				<th>Gross Salary:</th>
				<td><?= $g_salary ?></td>
			</tr>
			<tr>
				<th>Employee's Provident Fund:</th>
				<td><?= $epf ?></td>
				<th>Professional Tax:</th>
				<td><?= $pt ?></td>
			</tr>
			<tr>
				<th>Income Tax:</th>
				<td><?= $it ?></td>
			</tr>
			<tr>
				<th>Leave Taken:</th>
				<td><?= $lt ?></td>
				<th>Leave Deductions:</th>
				<td><?= $ld ?></td>
			</tr>
			<tr>
				<th>Net Salary:</th>
				<td><?= $n_salary ?></td>
			</tr>
		</table>
    <br>
    <br>
  		</fieldset>
		</div>
    <div class="print">
      <button onClick="window.print()"  class="btn btn-secondary" >Print Details</button>
      <input type="button" VALUE="Back" class="btn btn-secondary" onClick="history.go(-1);">
    </div>
<br><br><br>
	<p style="text-decoration: underline;"><b><?php echo "<a href='mailto:" . $em . "?subject=Salary receipt'</a>"; ?>Click to Mail</b></p>
  </div>
</form>
</body>
</html>
