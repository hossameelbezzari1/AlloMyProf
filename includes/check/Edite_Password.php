<?php
    session_start();
    include '../../configure/database.php';
    include '../../lang/langue.php';

    $id = $_COOKIE['id_teacher'];

    $lastpassword = filter_var($_POST['lastpassword'],FILTER_SANITIZE_STRING);
    $passHash1 = md5($lastpassword);
    $newpassword = filter_var($_POST['newpassword'],FILTER_SANITIZE_STRING);
    $passHash2 = md5($newpassword);
    $repassword = filter_var($_POST['repassword'],FILTER_SANITIZE_STRING);
    $xs = hash('sha256',uniqid());
    
    $time = date("H:i");
    $date = date("l M , d Y");
    $dateProgram = date("d/m/Y");

    //echo $passHash1;
    


    if(!empty($lastpassword) && !empty($newpassword) && !empty($repassword)){
        $select = $database->prepare("select * from teacher where id_teacher = '$id' and password = '$passHash1' ");
        $select->execute();
        if($select->rowCount() > 0){
            if($newpassword == $repassword){
                $update = $database->prepare("UPDATE teacher SET password = '$passHash2' , xs = '$xs' WHERE id_teacher = '$id'");
                $update->execute();
                
                $TimeOfCookies = time() + (30*24)*3600;

                $_SESSION['xs'] = $xs;
                setcookie('xs', $_SESSION['xs'] , $TimeOfCookies ,'/');
                ?>
                <div class="alert alert-success" role="alert">
                <?= Text('updateseccess') ?>
                </div>
            <?php }else{
                ?>
                <div class="alert alert-danger" role="alert">
                <?= Text('passwordnotequal') ?>
                </div>
            <?php }
        }else{ ?>
            <div class="alert alert-danger" role="alert">
            <?= Text('thepasswordisincorrect') ?>
            </div>
        <?php }
        
    }else{?>
        <div class="alert alert-danger" role="alert">
<?= Text('fill_in_all_the_boxes') ?>
</div>
      <?php 
    }

?>