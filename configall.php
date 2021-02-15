<?php

try{
    $pdo = new PDO('mysql:localhost;port=3306;dbname=salary', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $_SESSION['pdostatus']="Connected successfully!!!!";
}
catch(PDOException $e)
{
    echo "Connection failed: " . $e->getMessage();
    die();
}
