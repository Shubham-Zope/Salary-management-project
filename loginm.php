<?php
  include("bootstrap.php");
  include("configall.php"); ?>
<?php
try{
  $salt = 'XyZzy12*_';
  $email=$_POST['email'];
  $pass=$_POST['pass'];
  $check = md5("$pass");
  echo "$check";
  echo "wrong password";
  $stmt=$pdo->prepare("SELECT * FROM addemploy WHERE email= :em AND Password= :pass");
  $stmt->execute(array(':em'=>$email,':pass'=>$check));
  $row=$stmt->fetch(PDO::FETCH_ASSOC);
  if($stmt->rowCount() > 0)
  {
    if($email==$row['email'] && $check==$row['Password'])
    {
      header("location: homem.php");
    }
    echo "wrong password";
  }
}
catch(PDOException $e)
{
  $e->getMessage();
}
?>
