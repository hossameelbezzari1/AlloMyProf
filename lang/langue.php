<?php
    // if(!empty($_COOKIE['language'])){
    //     $lang = $_COOKIE['language'];
    //     include $lang.'.php';
    // }else{
        // try{
        //     $lang = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);
        //     include $lang.'.php';
        //     echo $lang;
        // }catch(Exception $ex){
            $lang = "fr";
            include 'fr.php';
        // }
    // }

    // echo text('lang');
    // echo substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2).'.php';
?>