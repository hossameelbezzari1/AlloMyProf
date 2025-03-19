<?php
    session_start();
    include '../../configure/database.php';
    include '../../lang/langue.php';

    $email = filter_var($_POST['email'],FILTER_SANITIZE_STRING);
    $password = filter_var($_POST['password'],FILTER_SANITIZE_STRING);
    $PassHash = md5($password);

    
    $time = date("H:i");
    $date = date("l M , d Y");
    $dateProgram = date("d/m/Y");

    if(!empty($email) && !empty($password)){
        $select = $database->prepare("select * from teacher where email = '$email'");
        $select->execute();
        $fetch = $select->fetch();
        $count = $select->rowCount();
        if($count >0){
            $select2 = $database->prepare("select * from teacher where email = '$email' and password = '$PassHash'");
            $select2->execute();
            $count2 = $select2->rowCount();
            if($count2 >0 ){

                $_SESSION['id_teacher'] = $fetch['id_teacher'];
                $TimeOfCookies = time() + (30*24)*3600;
                setcookie('id_teacher', $_SESSION['id_teacher'] , $TimeOfCookies ,'/');

                $_SESSION['xs'] = $fetch['xs'];
                setcookie('xs', $_SESSION['xs'] , $TimeOfCookies ,'/'); ?>
                <script>
                    window.location.href="user";
                </script>
            <?php }else{ ?>
                <div class="alert alert-danger" role="alert">
                <?= Text('thepasswordisincorrect') ?>
                </div>
           <?php }
        }else{?>
            <div class="alert alert-danger" role="alert">
<?= Text('email_is_not_found') ?>
</div>
       <?php }
    }else{ ?>
        <div class="alert alert-danger" role="alert">
<?= Text('error') ?>
</div>
    <?php }

    
        
?>