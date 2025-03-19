<?php

    function PageConfigurationInfo($id){
        if(!CheckIsInfoComplaite($id)){
            header('Location: configuration');
            exit();
        }
    }

    function IsInfoComplait($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM infoteacher WHERE id_teacher = '$id'");
        $select->execute();
        if($select->rowCount() > 0){
            return true;
        }else{
            return false;
        }
    }

    function IsHaveProfile($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM profile WHERE id_teacher = '$id'");
        $select->execute();
        if($select->rowCount() > 0){
            return true;
        }else{
            return false;
        }
    }
?>