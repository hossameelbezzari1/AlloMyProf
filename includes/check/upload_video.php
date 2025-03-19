<?php
    // session_start();
    include '../../configure/database.php';

    try{
        $id = $_COOKIE['id_teacher'];
        // echo $key . " - " . $image ."<br>" ;
        $fileName = $_FILES['video']['name'];
        $fileTmpname = $_FILES['video']['tmp_name'];
        $fileError = $_FILES['video']['error'];
        $fileSize = $_FILES['video']['size'];
        $fileType = $_FILES['video']['type'];

        $listExe = explode('.',$fileName);
        $fileExe = strtolower(end($listExe));
        // echo $fileSize;
        $allowedExe = array('mp4', '3gp', 'wmv');
        // echo $fileExe;
        if(in_array( $fileExe ,$allowedExe)){
            if($fileError === 0){
                if($fileSize < 102559388){
                    $fileFinameName = uniqid('',true).'_.'.$fileExe;
                    $filePath = '../../assets/upload/videos/'.$fileFinameName;
                    move_uploaded_file($fileTmpname,$filePath);

                    $insert = $database->prepare("INSERT INTO video VALUES (NULL, '$id', '$fileFinameName','$fileSize')");
                    $insert->execute();
                    // header('Location: ../../user');
                    ?>
                    <script>
                    window.location.href="user";
                </script>
               <?php }else{
                    echo '<div class="alert alert-danger" role="alert">size video is long</div>';
                }
            }else{
                echo '<div class="alert alert-danger" role="alert">there was an error uploading your file !</div>';
            }
        }else{
            echo '<div class="alert alert-danger" role="alert">You cannot upload file of this type !</div>';
        }
        // header("Location: ../../user");
        exit();
        // $file = $_FILES['images'];

        // print_r($file);

    }catch (Exception $ex) {
        echo $ex->getMessage();
    }
    

?>
