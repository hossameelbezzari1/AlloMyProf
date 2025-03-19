<?php
    if(!empty($_GET['id'])){
        $id = filter_var( $_GET['id'] ,FILTER_SANITIZE_NUMBER_INT );
    }else{
        header('Location: index');
        exit();
    }

    include '../../configure/database.php';
    
    $delete = $database->prepare("DELETE FROM image where id_image = '$id'");
    $delete->execute();
    header("Location: ../../user");
    exit();
?>