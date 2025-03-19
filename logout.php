<?php

    // SetLog($_SERVER['REQUEST_URI']);

    session_start();

    session_unset();

    session_destroy();
    
    $timeCookie = time() - (60*24)*3600;
    setcookie('xs', '' , $timeCookie , '/');

    setcookie('id_teacher', '' , $timeCookie , '/');

    header('location:login');
    exit();
?>