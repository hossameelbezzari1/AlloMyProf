<?php
    session_start();
    include '../../configure/database.php';

    $description = filter_var($_POST['description'],FILTER_SANITIZE_STRING);
    $price = filter_var($_POST['price'],FILTER_SANITIZE_NUMBER_INT);
    

    $id = $_COOKIE['id_teacher'];
    if(!empty($description) && !empty($price)){
        $update = $database->prepare("UPDATE infoteacher SET description = '$description' , price = '$price' WHERE id_teacher ='$id'");
        $update->execute();?>
        <script>
            Swal.fire({
                icon: 'success',
                // title: 'Your work has been saved',
                showConfirmButton: false,
                timer: 1500
            })
        </script>
    <?php }else{?>
        <script>
            Swal.fire({
                icon: 'success',
                // title: 'Your work has been saved',
                showConfirmButton: false,
                timer: 1500
            })
        </script>
    <?php }

?>