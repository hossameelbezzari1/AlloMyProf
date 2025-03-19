<?php
    include '../../configure/database.php';


    if(!empty($_GET['id']))
    {
        $matier = $_POST['matiere'];
        $typematier = $_POST['tiypematier'];
        $insert = $database->prepare("DELETE FROM matiere WHERE id_matiere = ".$_GET['id']);
        $insert->execute();
        header('Location: '.$_SERVER['HTTP_REFERER']);
        exit();
    }


?>
