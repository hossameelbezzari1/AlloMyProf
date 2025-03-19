<?php
    session_start();
    include '../../configure/database.php';
    
    include '../../lang/langue.php';


    $id = $_COOKIE['id_teacher'];

    $matiere = $_POST['matiere'];
    $delete = $database->prepare("DELETE FROM `teachermatier` WHERE id_teacher =".$id);
    $delete->execute();
    foreach($matiere as $key => $value){
        $insert = $database->prepare("INSERT INTO `teachermatier` (`id_teacherMatiere`, `id_teacher`, `id_matiere`) VALUES (NULL, '$id', '$value')");
        $insert->execute();
    }
    ?>
    <div class="alert alert-success" role="alert">
<?= text('updateseccess') ?>
</div>