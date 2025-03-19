<?php
   $TimeOfCookies = time() + (30*24)*3600;
   setcookie('language', trim(trim(basename(__FILE__) , '_'), '.php') , $TimeOfCookies ,'/');
   if(!empty($_SERVER['HTTP_REFERER'])){
       $langRedirect =  $_SERVER['HTTP_REFERER'];
   }else{
       $langRedirect =  '/';
   }
   header('Location: '.$langRedirect);
   // echo trim(trim(basename(__FILE__) , '_'), '.php');
?>