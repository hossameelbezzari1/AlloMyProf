<?php
    session_start();
    include '../../configure/database.php';
    include '../../lang/langue.php';

    $id = $_COOKIE['id_teacher'];

    $password1 = filter_var($_POST['password1'],FILTER_SANITIZE_STRING);
    $passHash1 = md5($password1);
    $password2 = filter_var($_POST['password2'],FILTER_SANITIZE_STRING);
    $xs = hash('sha256',uniqid());
    

    //echo $passHash1;
    


    if(!empty($password1) && !empty($password2)){
        if($password1 == $password2){
            $update = $database->prepare("UPDATE teacher SET password = '$passHash1' , xs = '$xs' WHERE id_teacher = '$id'");
            $update->execute();

            
            
            $TimeOfCookies = time() + (30*24)*3600;

            $_SESSION['xs'] = $xs;
            setcookie('xs', $_SESSION['xs'] , $TimeOfCookies ,'/');
            $toChanged = $database->prepare("UPDATE reset SET changed = '1' WHERE id_teacher = '$id'");
            $toChanged->execute(); ?>

            <script>
                window.location.href="user";
            </script>

            
        <?php }else{?>
<div class="alert alert-danger" role="alert">
<?= Text('passwordnotequal') ?>
</div>
<?php 
        }
    }else{ ?>
        <div class="alert alert-danger" role="alert">
<?= Text('fill_in_all_the_boxes') ?>
</div>
      <?php 
    }

?>