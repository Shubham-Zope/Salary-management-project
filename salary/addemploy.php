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
if (isset($_POST['fname']) && isset($_POST['mname']) && isset($_POST['lname']) && isset($_POST['email']) && isset($_POST['phone'])&& isset($_POST['department'])&& isset($_POST['designation'])&& isset($_POST['m']) && isset($_POST['addr'])){
if (strlen($_POST['fname']) < 1 || strlen($_POST['lname']) < 1 || strlen($_POST['email']) < 1 ||strlen($_POST['phone']) < 1||strlen($_POST['department']) < 1||strlen($_POST['designation']) < 1||strlen($_POST['m']) < 1||strlen($_POST['addr']) < 1)  {
    $_SESSION['error'] = 'All values are required';
    header("Location: addemploy.php");
    return;
}

    if ( strpos($_POST['email'],'@') === false ) {
        $_SESSION['error'] = 'Bad data';
        header("Location: addemploy.php");
        return;
    }
	if($_POST['designation'] === 'Chief Technical Officer')
	{
		$bsl = 30000;
		$hra =3000;
		$lta = 6000;
		$ca = 1600;
		$da = 1400;
		$md = 1250;
		$sa = 6150;
		$epf = 1800;
		$pt = 200;
	}
	else if($_POST['designation'] === 'Accountant')
	{
		$bsl = 13000;
		$hra = 3500;
		$lta = 2000;
		$ca = 1600;
		$da = 3000;
		$md = 1250;
		$sa = 1650;
		$epf = 1800;
		$pt = 200;
	}
	else if($_POST['designation'] === 'Senior Web Developer')
	{
		$bsl = 18000;
		$hra = 1500;
		$lta = 1500;
		$ca = 1100;
		$da = 2200;
		$md = 1250;
		$sa = 950;
		$epf = 1580;
		$pt = 200;
	}
	else if($_POST['designation'] === 'Senior Ux/Ui Developer')
	{
		$bsl = 16000;
		$hra = 3000;
		$lta = 1000;
		$ca = 1600;
		$da = 2500;
		$md = 1250;
		$sa = 900;
		$epf = 1800;
		$pt = 200;
	}
	else if($_POST['designation'] === 'Web Developer')
	{
		$bsl = 15000;
		$hra = 2000;
		$lta = 500;
		$ca = 600;
		$da = 1500;
		$md = 1200;
		$sa = 450;
		$epf = 1080;
		$pt = 200;
	}
	else if($_POST['designation'] === 'Ux/Ui Designer')
	{
		$bsl = 10000;
		$hra = 2000;
		$lta = 600;
		$ca = 600;
		$da = 1400;
		$md = 1200;
		$sa = 300;
		$epf = 1010;
		$pt = 200;
	}
	else if($_POST['designation'] === 'QA')
	{
		$bsl = 5000;
		$hra = 2000;
		$lta = 600;
		$ca = 180;
		$da = 800;
		$md = 750;
		$sa = 270;
		$epf = 580;
		$pt = 200;
	}
	else{
		$bsl = 0;
		$hra = 0;
		$lta = 0;
		$ca = 0;
		$da = 0;
		$md = 0;
		$sa = 0;
		$epf = 0;
		$pt = 0;
	}
$p="1a52e17fa899cf40fb04cfc42e6352f1";
$d1 = new DateTime($_POST['jd']);
$diff = $d1 -> diff(new DateTime);
$exp = $diff -> y;
	
	
	
	
	
	
    $sql = "BEGIN;
    INSERT INTO `addemploy` (`fname`,`mname`,`lname`,`qualify`,`blood`,`email`, `phone`,`exp`,`jd`,`department`,`designation`,`addr`,`MainRole`,`Password`) VALUES (:fname,:mname,:lname,:qualify,:blood,:email,:phone,:expe,:jd,:department,:designation,:addr,:m,:p);
	SET @ID = LAST_INSERT_ID();
	INSERT INTO `salary` (`b_salary`,`hra`,`lta`,`ca`,`da`,`md`, `sa`,`epf`,`pt`,`addemploy_Employ_ID`) VALUES (:bsl,:hra,:lta,:ca,:da,:md,:sa,:epf,:pt,LAST_INSERT_ID());
	INSERT INTO `leavez` (`addemploy_Employ_ID`) VALUES (@ID);
    COMMIT;";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':fname' => $_POST['fname'],
        ':mname' => $_POST['mname'],
        ':lname' => $_POST['lname'],
        ':qualify' => $_POST['qualify'],
        ':blood' => $_POST['blood'],
        ':email' => $_POST['email'],
        ':phone' => $_POST['phone'],
        ':expe' => $exp,
		':jd' => $_POST['jd'],
        ':department' => $_POST['department'],
        ':designation' => $_POST['designation'],
        ':addr' => $_POST['addr'],
        ':m' => $_POST['m'],
        ':p' => $p,
		':bsl' => $bsl,
        ':hra' => $hra,
        ':lta' => $lta,
        ':ca' => $ca,
        ':da' => $da,
        ':md' => $md,
        ':sa' => $sa,
        ':epf' => $epf,
		':pt' => $pt
      ));
	$_SESSION['success'] = 'New Record Added!!';
    header( 'Location: viewemploy.php' ) ;
    return;
}

if ( isset($_SESSION['error']) ) {
    echo '<p style="color:red">'.$_SESSION['error']."</p>\n";
    unset($_SESSION['error']);
}
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Add new employee</title>
	<link href="style2.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="addemploy.php">Add new employee</a>
    <a href="viewemploy.php">View employee</a>
    <a href="leavem.php">Leave Requests</a>
    <a href="logout.php">Logout</a>
</div>
<div class="bar">
	<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
</div>


<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "325px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
  <div class="heading">
  	<h1>Add new employee</h1>
  </div>
  <div class="overall">
	<?php
		if (isset($_SESSION['error'])) {
        echo('<p style="color: red;">' . htmlentities($_SESSION['error']) . "</p>\n");
        unset($_SESSION['error']);
    }
		?>
    <form id="update" method="post" class="u-admin">
  		<fieldset>
  			<div class="name">
  				<label for="fname">First name:<span class="required">*</span></label><input type="text" name="fname" placeholder="Your name" >
  				<label for="fname">Middle name(if any):</label><input type="text" name="mname" placeholder="Middle name ">
  				<label for="fname">Last name:<span class="required">*</span></label><input type="text" name="lname" placeholder="Surname" ><br>
  			</div>
  			<fieldset id="personaldetails">
  				<div class="blood">
            <label for="blood">Blood Group:</label><input type="text" name="blood"><br>
  				</div>
          <div class="qualify">
            <label for="qualify">Qualifications:</label><input type="text" name="qualify">
          </div>
  			</fieldset>
  			<div class="details">
  				<label for="email">Email ID:<span class="required">*</span></label><input type="email" name="email" ><br>
  				<label for="phone">Phone number:<span class="required">*</span></label><input type="tel" name="phone"   ><br>
				<label for="exp">Joining date:</label><input type="text" placeholder="YYYY-MM-DD" name="jd"><br>
  			</div>
  			<div class="department">
          <label for="deptmnt" >Department:<span class="required">*</span></label>
  				<input type="text" name="department">
  			</div>
        <br>
        <div class="designation">
          <label for "desgntn">Designation:<span class="required">*</span></label>
  				<input type="text" name="designation">
        </div>
  		 <br>
       <div class="role">
         <label for "m">Main Role: <span class="required">*</span></label><input type="text" name="m">
       </div>

  		 <div class="address">
  			 <label for "address">Permanent Address:<span class="required">*</span></label><textarea class="addr" name="addr" ></textarea><br>
  		 </div>
  			<br>
			  <div class="leavebtn">
      <button type="submit" class="submit" style="border-radius: 10px; margin-right: 15px; background-color: green; color: white;">Add details</button>
  </div>
  <div class="cancelleave">
      <button  name="submit" class="cancel" style="border-radius: 10px; background-color: red; color: white;">Cancel</button>
      </div>
  		</fieldset>
  	</form>
  </div>

</body>
</html>
