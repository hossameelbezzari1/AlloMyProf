<?php

    function ifProfileValide($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM profile where id_teacher = '$id'");
        $select->execute();
        if($select->rowCount() > 0){
            return true;
        }else{
            return false;
        }
    }

    function GetProfileImage($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM profile where id_teacher = '$id' ORDER BY id_profile DESC");
        $select->execute();
        if($select->rowCount() > 0){
            return $select->fetch()['src'];
        }else{
            return 'imagesAno.png';
        }
    }

    function GetProfileLettre($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM infoteacher where id_teacher = '$id'");
        $select->execute();
        return strtoupper($select->fetch()['fullname'][0]);
    }
    
?>