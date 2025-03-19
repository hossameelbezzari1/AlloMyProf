<?php
    if(!empty($_GET['id'])){
        $id = filter_var( $_GET['id'] ,FILTER_SANITIZE_NUMBER_INT );
    }else{
        header('Location: index');
        exit();
    }

    include '../../configure/database.php';

//     $select = $database->prepare("SELECT * FROM video WHERE id_video = '$id'");
//     $select->execute();
// // print($select->fetch()['src']);
    
    // if(is_writable("../../../assets/upload/videos/".$select->fetch()['src'])){
    //     unlink("../../../assets/upload/videos/".$select->fetch()['src']);
    // }else{
    //     echo 'no';
    // }

    // if(is_writable("../../../assets/upload/videos/623752ffc3d221.36975000_.mp4")){
    //     unlink("../../../assets/upload/videos/623752ffc3d221.36975000_.mp4");
    //     echo "yes";
    // }else{
    //     echo 'no';
    // }
    
    $delete = $database->prepare("DELETE FROM video where id_video = '$id'");
    $delete->execute();

    header("Location: ../../user");
    exit();
?>