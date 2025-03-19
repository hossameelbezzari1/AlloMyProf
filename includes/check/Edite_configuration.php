<?php

    include '../../configure/database.php';

    // $getOption =  $database->prepare("SELECT * FROM `matiere`");
    // $getOption->execute();
    // $fetch = $getOption->fetchAll();

    // foreach($fetch as $key => $value){
    //     define($value['matiere'],filter_var($_POST[$value['matiere']],FILTER_SANITIZE_STRING));
    //     // echo $value['matiere'] . '<br>';
    // }
    $id = $_COOKIE['id_teacher'];

    $fullname = filter_var($_POST['fullname'],FILTER_SANITIZE_STRING);
    $tel = "+212";
    $tel .= filter_var($_POST['tel'],FILTER_SANITIZE_STRING);
    $description = filter_var($_POST['description'],FILTER_SANITIZE_STRING);
    $country = filter_var($_POST['country'],FILTER_SANITIZE_STRING);
    $city = filter_var($_POST['city'],FILTER_SANITIZE_STRING);
    $country = filter_var($_POST['country'],FILTER_SANITIZE_STRING);
    $price = filter_var($_POST['price'],FILTER_SANITIZE_STRING);
    $matiere = $_POST['matiere'];

	if(isset($_POST['submitConfiguration'])){
        // if(!empty($fullname) && !empty($tel) && !empty($description) && !empty($country) && !empty($city) && !empty($price) && count($matiere) > 0){

            $id = $_COOKIE['id_teacher'];
            
            $insert = $database->prepare("INSERT INTO infoteacher VALUES ('$id', '$fullname', '$description', '$price', '$tel')");
            $insert->execute();

            foreach($matiere as $key => $value){
                $insert = $database->prepare("INSERT INTO `teachermatier` (`id_teacherMatiere`, `id_teacher`, `id_matiere`) VALUES (NULL, '$id', '$value')");
                $insert->execute();
            }

            $update = $database->prepare("UPDATE teacher SET id_ville = '$city' , id_country = '$country'  WHERE `teacher`.`id_teacher` = '$id'");
            $update->execute();
            header('Location: ../../user');
            exit();
        // }else{
        //     header('Location: ../../configuration');
        //     exit();
        // }
    }
    
    
?>
