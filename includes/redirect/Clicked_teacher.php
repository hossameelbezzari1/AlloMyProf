<?php
    include '../../configure/database.php';

    $phone = filter_var($_GET['phone'],FILTER_VALIDATE_INT);
    $teacher = filter_var($_GET['teacher'],FILTER_VALIDATE_INT);
    $message = '';
    if(!empty($_GET['message'])){
        $message = filter_var($_GET['message'],FILTER_SANITIZE_STRING);
    }
    
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        $ip = $_SERVER['REMOTE_ADDR'];
    }
    $select = $database->prepare("INSERT INTO `contacterwhatsapp` (`id_contact`, `id_teacher`, `ip`) VALUES (NULL, '$teacher', '$ip')");
    $select->execute();
    // https://api.whatsapp.com/send/?phone=212626571602&text=jje&app_absent=0
    
    header("Location: https://api.whatsapp.com/send/?phone=$phone&text=$message&app_absent=05");
    exit();
?>