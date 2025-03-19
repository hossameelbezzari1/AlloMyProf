<?php

    //$link = '';
    ini_set('display_errors','on');
    include 'database.php';
    include 'class/function/security.php';
    include 'lang/langue.php';
    include 'class/function/site.php';
    include 'class/function/profiles.php';
    include 'class/function/admin.php';
    include 'class/function/teacher.php';
    include 'class/function/public.php';
    include 'class/function/annalys.php';
    include 'class/function/check.php';
    include 'api/api.php';

    IfNoteAccountSession();
?>