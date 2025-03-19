<?php
    session_start();
    include '../../configure/database.php';

    $fullname = filter_var($_POST['fullname'],FILTER_SANITIZE_STRING);
    $number = filter_var($_POST['etat'],FILTER_SANITIZE_STRING);
    $number .= filter_var($_POST['number'],FILTER_SANITIZE_NUMBER_INT);


    $id = $_COOKIE['id_teacher'];
    if(!empty($fullname)  && !empty($number)){
        $update = $database->prepare("UPDATE infoteacher SET fullname = '$fullname' , tel = '$number' WHERE id_teacher ='$id'");
        $update->execute();
        //echo '<div class="alert alert-success" role="alert">update success</div>'; ?>
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