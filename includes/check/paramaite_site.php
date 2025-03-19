<?php
    if(isset($_POST['btnpausesite'])){
        include '../../configure/database.php';
        $value = $_POST['pausesite'];
        $update = $database->prepare("UPDATE site set on_off = '$value'");
        $update->execute();
        if(!empty($_SERVER['HTTP_REFERER'])){
            $langRedirect =  $_SERVER['HTTP_REFERER'];
        }else{
            $langRedirect =  '/';
        }
        header('Location: '.$langRedirect);
    }
?>