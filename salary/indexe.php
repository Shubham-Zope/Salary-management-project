<?php
session_start();
require_once "configall.php";
include'bootstrap.php';

if (isset($_POST['cancel'])) {
    // Redirect the browser to game.php
    header("Location: intro.php");
    return;
}

$salt = 'XyZzy12*_';
$error=false;
if (isset($_POST['pass']) && isset($_POST['email'])) {
  if ( strlen($_POST['email']) < 1 || strlen($_POST['pass']) < 1 ) {
        $error = "Email and password are required";
        $_SESSION['error']=$error;
    }
    else {
        $pass = htmlentities($_POST['pass']);
        $email = htmlentities($_POST['email']);

        if((strpos($email, '@') === false)) {
            $error = "Email must have an at-sign (@)";
            $_SESSION['error']=$error;
        }
        else{


    $stmt = $pdo->prepare('SELECT Employ_ID,email, Password,MainRole FROM addemploy WHERE email = :em AND Password = :pw ');
    $stmt->execute(array(':em' => $_POST['email'], ':pw' =>hash('md5', $salt . $_POST['pass']) ));


    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($row !== false) {

        $_SESSION['name'] = $row['email'];
        $_SESSION['roles'] = $row['MainRole'];
        $_SESSION['user_id'] = $row['Employ_ID'];
        $url=urlencode($row['Employ_ID']);
        header("Location: homee.php?Employ_ID=$url");

        return;}
        else {
          $error = "Incorrect password";
          $_SESSION['error']=$error;
        }
  }
  }
}
    ?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
<link href="style1.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
</head>

<body>
		<div class="container">
		<fieldset>
		<h1>Welcome employee</h1>
		<p>Please enter your email id and password to login</p>

    <?php
// Note triple not equals and think how badly double
// not equals would work here...
if (isset($_SESSION['error'])) {
        echo('<p style="color: red;">' . htmlentities($_SESSION['error']) . "</p>\n");
        unset($_SESSION['error']);
    }
?>
		<form id="Mgmt" method="post" class="admin">
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-file-person-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M12 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm-1 7a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm-3 4c2.623 0 4.146.826 5 1.755V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-1.245C3.854 11.825 5.377 11 8 11z"/>
      </svg>
			<input type="text" class="name" name="email" placeholder="Email-ID">
<br>
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-key-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
</svg>
			<input type="password" name="pass" class="password" placeholder="Password">
<br>
				<button type="submit"  class="submit" >Log In</button>
        <button type="submit"  class="submit" name="cancel" >Cancel</button>

		</form>
			</fieldset>
	</div>
	<footer style="color: white;">Created by <a href="https://vesit.ves.ac.in/">VESIT</a></footer>
</body>
</html>
