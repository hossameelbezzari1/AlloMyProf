<?php
    session_start();
    include '../../../configure/database.php';

    $email = filter_var($_POST['email'],FILTER_SANITIZE_STRING);
    $password = filter_var($_POST['password'],FILTER_SANITIZE_STRING);
    $PassHash = md5($password);


    if(!empty($email) && !empty($password)){
        $select = $database->prepare("select * from admin where email = '$email'");
        $select->execute();
        $fetch = $select->fetch();
        $count = $select->rowCount();
        if($count >0){
            $select2 = $database->prepare("select * from admin where email = '$email' and password = '$PassHash'");
            $select2->execute();
            $count2 = $select2->rowCount();
            if($count2 >0 ){
                $_SESSION['id_admin'] = $fetch['id_admin'];
                $TimeOfCookies = time() + (30*24)*3600;
                setcookie('id_admin', $_SESSION['id_admin'] , $TimeOfCookies ,'/'); ?>
                <script>
                    window.location.href="dashboard.php";
                </script>
            <?php }else{
                echo "The password is incorrect";
            }
        }else{
            echo "E-Mail is not found";
        }
    }else{
        echo "error";
    }

    
        
?>
