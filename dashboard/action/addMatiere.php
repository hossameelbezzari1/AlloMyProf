<?php
    include '../../configure/database.php';


    if(isset($_POST['btnajouter']))
    {
        $matier = $_POST['matiere'];
        $typematier = $_POST['tiypematier'];
        $insert = $database->prepare("INSERT INTO `matiere` (`id_matiere`, `matiere`, `typematiere`) VALUES (NULL, '$matier', '$typematier')");
        $insert->execute();
        header('Location: '.$_SERVER['HTTP_REFERER']);
    }


?>
