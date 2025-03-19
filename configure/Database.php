<?php
$dsn = 'mysql:host=localhost;dbname=allomyprof';
$user = 'root';
$pass = '';

$option = array(

PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
    
);
try{
    $database = new PDO($dsn, $user, $pass, $option);
    $database->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    //echo 'connected';
}

catch(PDOException $e){
    echo 'faild to connect Beceause : ' . $e ->getMessage();
}

?>