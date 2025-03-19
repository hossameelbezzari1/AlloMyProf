<?php
    function GetSiteName($searche){
        include 'configure/database.php';
        $select = $database->prepare("SELECT $searche FROM site");
        $select->execute();
        return $select->fetch()[$searche];
    }
    function GetAllFaq($lang){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM faq WHERE lang = '$lang'");
        $select->execute();
        return $select->fetchAll();
    }
    
    function GetFaq($page, $lang){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM faq WHERE id_faq = '$page' and lang = '$lang'");
        $select->execute();
        return $select->fetch();
    }

    function GetPrivacyPolicity($lang){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM `privacy_policity` WHERE lang = '$lang'");
        $select->execute();
        return $select->fetch();
    }

    function GetABout($lang){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM `about` WHERE lang = '$lang'");
        $select->execute();
        return $select->fetch();
    }

    function GetCookies($lang){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM `cookies` WHERE lang = '$lang'");
        $select->execute();
        return $select->fetch();
    }

    function GetHistoryPage(){
        if(!empty($_SERVER['HTTP_REFERER'])) return $_SERVER['HTTP_REFERER'];
        else return 'unknown';
    }

    function SetSupport($name,$email,$subject,$message){
        include 'configure/database.php';
        $insert = $database->prepare("INSERT INTO `support` ( `name`, `email`, `subject`, `message`, `seen`) VALUES ('hoss', 'bwidb@tghj', 'dineudno', 'hwudwdhnowhdnqolw', '0')");
        $insert->execute();
    }
    function GetAllSupport(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM support");
        $select->execute();
        return $select->fetchAll();
    }
?>
