<?php include'bootstrap.php';?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
<link href="style1.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="background"></div>
	<div class="container">
		<fieldset>
		<h1>Welcome admin</h1>
		<p>Please enter your username and password to login</p>
		<form id="Mgmt" class="admin">
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-file-person-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M12 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm-1 7a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm-3 4c2.623 0 4.146.826 5 1.755V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-1.245C3.854 11.825 5.377 11 8 11z"/>
      </svg>
			<input type="text" class="name" placeholder="Username">
<br>
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-key-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
</svg>
			<input type="password" class="password" placeholder="Password">
<br>
				<button onClick="document.location='view.php'"  class="submit" >Log In</button>
			
		</form>
			</fieldset>
	</div>
	<footer>Created by VESIT</footer>
</body>
</html>