<?php
    function GetAdmin($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM admin WHERE id_admin = '$id'");
        $select->execute();
        return $select->fetch();
    }

    function PauseAdmin(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM site");
        $select->execute();
        if($select->fetch()['on_off'] != 1){
            exit();
        }
    }
?>