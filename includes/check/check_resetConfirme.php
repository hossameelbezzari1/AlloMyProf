<?php
    session_start();
    include '../../configure/database.php';
    include '../../lang/langue.php';

    $code = filter_var($_POST['code'],FILTER_SANITIZE_STRING);
    $id_teacher = $_COOKIE['id_reset'];

    if(!empty($code)){
        $select = $database->prepare("SELECT * from reset where id_teacher = '$id_teacher' and code = '$code' order by id_reset DESC");
        $select->execute();
        $fetch = $select->fetch();
        $count = $select->rowCount();
        if($count >0){
            $account = $database->prepare("SELECT * FROM teacher WHERE id_teacher = '$id_teacher'");
            $account->execute();
            $fetchAccount = $account->fetch();


            $_SESSION['id_teacher'] = $fetchAccount['id_teacher'];
                $TimeOfCookies = time() + (30*24)*3600;
                setcookie('id_teacher', $_SESSION['id_teacher'] , $TimeOfCookies ,'/');

                $_SESSION['xs'] = $fetchAccount['xs'];
                setcookie('xs', $_SESSION['xs'] , $TimeOfCookies ,'/'); ?>
                <script>
                    window.location.href="changePassword";
                </script>
        <?php }else{
            echo "Code confirmation is incorrect";
        }
    }else{ ?>
        <div class="alert alert-danger" role="alert">
<?= Text('error') ?>
</div>
  <?php  }

    
        
?>