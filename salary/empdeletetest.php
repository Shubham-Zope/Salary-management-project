<?php
include "configall.php";
include "bootstrap.php";
session_start();
if (!isset($_SESSION['name'])) {
    die('Not logged in');
}

if ( isset($_POST['delete']) && isset($_POST['Employ_ID']) ) {
    $sql = "DELETE FROM addemploy WHERE Employ_ID = :zip";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(':zip' => $_POST['Employ_ID']));
    $_SESSION['success'] = 'Record deleted';
    header( 'Location: viewemploy.php' ) ;
    return;
}

// Guardian: Make sure that user_id is present
if ( ! isset($_GET['Employ_ID']) ) {
  $_SESSION['error'] = "Missing user_id";
  header('Location: viewemploy.php');
  return;
}

$stmt = $pdo->prepare("SELECT fname, Employ_ID FROM addemploy where Employ_ID = :xyz");
$stmt->execute(array(":xyz" => $_GET['Employ_ID']));
$row = $stmt->fetch(PDO::FETCH_ASSOC);
if ( $row === false ) {
    $_SESSION['error'] = 'Bad value for user_id';
    header( 'Location: viewemploy.php' ) ;
    return;
}

?>
<html>
<head>
<meta charset="utf-8">
<title>Add new employee</title>
	<link href="delete.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
</head>
<div class="overall">
<center><p>Confirm: Deleting <?= htmlentities($row['fname']) ?></p></center>
<br>
<br>
<form method="post">
<input type="hidden" name="Employ_ID" value="<?= $row['Employ_ID'] ?>">
<div class="del">
<input type="submit" class="btn-secondary" value="Delete" name="delete" style="border-radius: 10px; margin-right: 15px; background-color: green; color: white;">
<a class="btn-secondary" href="viewemploy.php" style="border-radius: 10px; background-color: red; color: white;">Cancel</a>
</div>
</div>
</form>
</div>
</html>
