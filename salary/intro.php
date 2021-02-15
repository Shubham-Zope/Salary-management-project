<?php include('bootstrap.php');?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="intro.css?v=<?php echo time(); ?>">
  </head>
  <body>
    <div class="about">
      <p></p>
    </div>
    <div class="intro">
      <h3>Login to our domain</h3>
      <br><br><br>
      <div class="management">
        <form action="indexm.php" method="post">
            <input  type="submit" name="Management" value="Management">
        </form>
      </div>
      <br>
      <br>
      <br>
      <div class="employ">
        <form action="indexe.php" method="post">
            <input type="submit" name="Employ" value="Employee">
        </form>
      </div>
    </div>
  </body>
</html>
