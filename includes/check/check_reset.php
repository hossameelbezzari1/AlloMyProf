<?php
    session_start();
    include '../../configure/database.php';
    include '../../lang/langue.php';
    include '../../class/function/site.php';

    $email = filter_var($_POST['email'],FILTER_SANITIZE_STRING);
// echo 'is run send';

    if(!empty($email)){
        $select = $database->prepare("SELECT * from teacher where email = '$email'");
        $select->execute();
        $fetch = $select->fetch();
        
        // print_r( $fetch);
        $rand = rand(00000,99999);
        // echo $rand;
        // echo $id;
        $count = $select->rowCount();
        // echo 'count is :'.$count;
        if($count >0){
            $id = $fetch['id_teacher'];
            // echo $id;
            // $to_email = 'name @ company . com';
            $subject = 'Code de récupération de compte allomyprof';
            // echo GetSiteName('site');
            // $name = (!empty(GetTeacher($id)['fullname'])) ? GetTeacher($id)['fullname'] : ''; if(!empty(GetTeacher($id)['fullname'])){echo GetTeacher($id)['fullname'];}
            $message = '<table class="m_9069621041842295782main" border="0" width="595" cellspacing="0" cellpadding="0" align="center" bgcolor="white">
            <tbody>
            <tr>
            <td class="m_9069621041842295782main-td">
            <table class="m_9069621041842295782header" style="height: 48px; width: 100%;" width="100%">
            <tbody>
            <tr style="height: 48px;">
            
            </tr>
            </tbody>
            </table>
            <table class="m_9069621041842295782content" width="100%">
            <tbody>
            <tr>
            <td class="m_9069621041842295782content-td">
            <p>Bienvenue </p>
            <p>Nous sommes l&agrave; pour vous aider &agrave; r&eacute;cup&eacute;rer votre compte, car vous l\'avez demand&eacute;<br />Et ce num&eacute;ro ci-dessous est le num&eacute;ro pour confirmer que vous &ecirc;tes le propri&eacute;taire du compte</p>
            <table class="m_9069621041842295782intercom-container m_9069621041842295782intercom-align-center" align="center">
            <tbody>
            <tr>
            <td style="color: aliceblue; padding: 5px; border-radius: 5px;" align="left" valign="top" bgcolor="#3C7CDB">'. $rand.'</td>
            </tr>
            </tbody>
            </table>
            <p><br />N\'oubliez pas de ne pas partager ce num&eacute;ro</p>
            <p>Merci beaucoup de notre &eacute;quipe</p>
            </td>
            </tr>
            </tbody>
            </table>
            </td>
            </tr>
            </tbody>
            </table>';

            
            // Set content-type header for sending HTML email 
            $headers = "MIME-Version: 1.0" . "\r\n"; 
            $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n"; 

            $headers .= 'From: AlloMyProf <support@allomyprof.com>' . "\r\n";
            // Additional headers 
            // $headers .= 'From: '.$fromName.'<'.$from.'>' . "\r\n"; 
            // $headers .= 'Cc: welcome@example.com' . "\r\n"; 
            // $headers .= 'Bcc: welcome2@example.com' . "\r\n"; 
            // echo $headers;
            mail($email,$subject,$message,$headers);
            // echo 'sended';

            $create = $database->prepare("INSERT INTO `reset` (`id_reset`, `id_teacher`, `code`) VALUES (NULL, '$id', '$rand')");
            $create->execute();

            $TimeOfCookies = time() + (30*24)*3600;
            setcookie('id_reset', $id , $TimeOfCookies ,'/'); 
            
            ?>
            <script>
                window.location.href="resetConfirme";
            </script>
            
        <?php }else{ ?>
            <div class="alert alert-danger" role="alert">
            <?= Text('email_is_not_found') ?>
          </div>
        <?php }
    }else{?>
        <div class="alert alert-danger" role="alert">
  <?= Text('error') ?>
</div>
   <?php }

    
        
?>