<?php
    session_start();
    include '../../configure/database.php';
    include '../../lang/langue.php';

    $email = filter_var($_POST['email'],FILTER_SANITIZE_STRING);
    $password = filter_var($_POST['password'],FILTER_SANITIZE_STRING);
    $PassHash = md5($password);
    $repassword = filter_var($_POST['repassword'],FILTER_SANITIZE_STRING);
    $xs = hash('sha256',uniqid());
    
    $time = date("H:i");
    $date = date("l M , d Y");
    $dateProgram = date("d/m/Y");

    if(!empty($email) && !empty($password)){

        if($repassword == $password){
            $select = $database->prepare("select * from teacher where email = '$email'");
            $select->execute();
            $count = $select->rowCount();

            if($count == 0){
                $insert = $database->prepare("INSERT INTO `teacher` (`id_teacher`, `email`, `password`, `id_ville`, `id_country`,`xs`) VALUES (NULL, '$email', '$PassHash', '1', '1', '$xs')");
                $insert->execute();

                $select = $database->prepare("select * from teacher where email = '$email'");
                $select->execute();
                $fetch = $select->fetch();
                $_SESSION['id_teacher'] = $fetch['id_teacher'];
                $TimeOfCookies = time() + (30*24)*3600;
                setcookie('id_teacher', $_SESSION['id_teacher'] , $TimeOfCookies ,'/');

                $_SESSION['xs'] = $fetch['xs'];
                setcookie('xs', $_SESSION['xs'] , $TimeOfCookies ,'/'); ?>
                <script>
                    window.location.href="configuration";
                </script>
            <?php }else{
                echo '<div class="alert alert-danger" role="alert">This email is oready created</div>';
            } 
        }else{ ?>
            <div class="alert alert-danger" role="alert"><?= text('passwordnotequal') ?></div>;
        <?php }


               
     }else{ ?>
        <div class="alert alert-danger" role="alert">
<?= Text('error') ?>
</div>
  <?php  }

?>