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
$p="1a52e17fa899cf40fb04cfc42e6352f1";
$n=0;
    $sql = "BEGIN;
    INSERT INTO `addemploy` (`fname`,`mname`,`lname`,`qualify`,`blood`,`email`, `phone`,`exp`,`department`,`designation`,`addr`,`MainRole`,`Password`) VALUES (:fname,:mname,:lname,:qualify,:blood,:email,:phone,:expe,:department,:designation,:addr,:m,:p);
    INSERT INTO `attendance`(`addemploy_Employ_ID`,`number`) VALUES (LAST_INSERT_ID(),:n);
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
        ':expe' => $_POST['expe'],
        ':department' => $_POST['department'],
        ':designation' => $_POST['designation'],
        ':addr' => $_POST['addr'],
        ':m' => $_POST['m'],
        ':p' => $p,
        ':n'=> $n
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
  				<label for="exp">Experience:</label><input type="text" name="expe"><br>
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
        <div class="bn">
          <button  class="submit" >Add Details</button>
    			<button type="submit" name="cancel" class="cancel" >Cancel</button>
        </div>
  		</fieldset>
  	</form>
  </div>

</body>
</html>
