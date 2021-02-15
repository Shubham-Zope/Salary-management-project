<?php
include "configall.php";
include "bootstrap.php";
session_start();
if (!isset($_SESSION['name'])) {
    die('Not logged in');
}
if (isset($_POST['leave'])) {
if (strlen($_POST['leave']) < 1)   {
    $_SESSION['error'] = 'All values are required';
    header("Location: showattendance.php?Employ_ID=".$_POST['Employ_ID']);
    return;
}
$sql = "UPDATE `attendance` SET `number`=:leave WHERE `addemploy_Employ_ID`=:Employ_ID";
$stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':leave' => $_POST['leave'],
      ':Employ_ID' => $_POST['Employ_ID']));

    $_SESSION['success'] = 'Attendance Record Updated!!';
    header( 'Location: viewemploy.php' ) ;
    return;
}

// Guardian: Make sure that user_id is present
if ( ! isset($_GET['Employ_ID']) ) {
  $_SESSION['error'] = "Missing user_id";
  header('Location: viewemploy.php');
  return;
}

$stmt = $pdo->prepare("SELECT `addemploy`.*, `attendance`.*
FROM `addemploy`
	INNER JOIN `attendance` ON `attendance`.`addemploy_Employ_ID` = `addemploy`.`Employ_ID` WHERE `addemploy`.`Employ_ID`=:xyz");
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
$em = htmlentities($row['email']);
$ph = htmlentities($row['phone']);
$lt = htmlentities($row['number']);
$dp = htmlentities($row['department']);
$ds = htmlentities($row['designation']);
$employ = $row['Employ_ID'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Attendance</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="showattendance.css?v=<?php echo time(); ?>">
</head>
<body>

<div class="heading">
  <center><h2>Employee attendance</h2></center>
</div>
<br><br><br>
<div class="container">
  <table class="table table-hover">
    <tr>
      <th>Name:</th>
      <td><?= $fn ?></td>
    </tr>
    <tr>
      <th>Email ID:</th>
      <td><?= $em ?></td>
    </tr>
    <tr>
      <th>Phone:</th>
      <td><?= $ph ?></td>
    </tr>
    <tr>
      <th>Department:</th>
      <td><?= $dp ?></td>
    </tr>
    <tr>
      <th>Designation:</th>
      <td><?= $ds ?></td>
    </tr>
    <table>
      <tr>
        <form method="post" name="butt">
          <div class="btnleave">
            <label for="leave">Number of leave:     </label>
            <input type="number" name="leave" value="<?= $lt ?>" >
            <button class="btn btn-secondary" >Submit</button>
          </div>
      </tr>
    </table>
      <form method="post" name="butt">

  <input type="hidden" name="Employ_ID" value="<?= $employ ?>">
</form>

</div>

</body>
</html>
