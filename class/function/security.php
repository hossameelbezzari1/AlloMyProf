<?php
    function XsToId(){
        include 'configure/database.php';
        $xs = $_COOKIE['xs'];
        $select = $database->prepare("SELECT id_teacher FROM teacher  WHERE xs = '$xs'");
        $select->execute();
        return $select->fetch()['id_teacher'];
    }
    
    function IfNoteAccountSession(){
        include 'configure/database.php';
        if(!empty($_COOKIE['xs']) and !empty($_COOKIE['id_teacher'])){
            $xs = $_COOKIE['xs'];
            $id = $_COOKIE['id_teacher'];
            $select = $database->prepare("SELECT * FROM teacher  WHERE xs = '$xs' and id_teacher = '$id'");
            $select->execute();
            if($select->rowCount() == 0){
                include 'logout.php';
            }
        }        
    }
    
    function GetStatuChangePassword($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM reset where id_teacher = '$id' order by id_reset DESC");
        $select->execute();
        if($select->rowCount() > 0 and $select->fetch()['changed'] == 0){
            return true;
        }else{
            return false;
        }
    }
?>