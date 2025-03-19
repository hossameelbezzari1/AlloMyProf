<?php
    // session_start();
    include '../../configure/database.php';

    $id = $_COOKIE['id_teacher'];


	// if(isset($_POST['btnsaveProfile_'])){
	// 	$file = $_FILES['image'];
	// 	$fileName = $_FILES['image']['name'];
	// 	$fileTmpname = $_FILES['image']['tmp_name'];
	// 	$fileError = $_FILES['image']['error'];
	// 	$fileSize = $_FILES['image']['size'];
	// 	$fileType = $_FILES['image']['type'];

	// 	$listExe = explode('.',$fileName);
	// 	$fileExe = strtolower(end($listExe));

	// 	$allowedExe = array('jpg', 'jpeg', 'png');
    //     echo $fileExe;
	// 	if(in_array( $fileExe ,$allowedExe)){
	// 		if($fileError === 0){
	// 			if($fileSize < 4000000){
	// 				 $fileFinameName = uniqid('',true).'_.'.$fileExe;
	// 				 $filePath = '../../assets/upload/profiles/'.$fileFinameName;
	// 				 move_uploaded_file($fileTmpname,$filePath);

	// 				 $insert = $database->prepare("INSERT INTO `profile` (`id_profile`, `id_teacher`, `src`) VALUES (NULL, '$id', '$fileFinameName')");
	// 				 $insert->execute();

	// 				 header("Location: ../../");
	// 				 exit();
	// 			}else{
	// 				echo "size image is long";
	// 			}
	// 		}else{
	// 			echo 'there was an error uploading your file !';
	// 		}
	// 	}else{
	// 		echo "You cannot upload file of this type !";
	// 	}
	// 	// print_r($file);
	// }

    if(isset($_POST['uploadimages'])){

        $getlimit = $database->prepare("SELECT COUNT(*) FROM image WHERE id_teacher = '$id'");
        $getlimit->execute();
        $count = 7 - $getlimit->rowCount();

        foreach($_FILES['images']['tmp_name'] as $key => $image){
            if($count <= 7){
                // echo $key . " - " . $image ."<br>" ;
                $fileName = $_FILES['images']['name'][$key];
                $fileTmpname = $_FILES['images']['tmp_name'][$key];
                $fileError = $_FILES['images']['error'][$key];
                $fileSize = $_FILES['images']['size'][$key];
                $fileType = $_FILES['images']['type'][$key];

                $listExe = explode('.',$fileName);
                $fileExe = strtolower(end($listExe));

                $allowedExe = array('jpg', 'jpeg', 'png');
                if(in_array( $fileExe ,$allowedExe)){
                    if($fileError === 0){
                        // if($fileSize < 4000000){
                            $fileFinameName = uniqid('',true).'_.'.$fileExe;
                            $filePath = '../../assets/upload/images/'.$fileFinameName;
                            move_uploaded_file($fileTmpname,$filePath);

                            $insert = $database->prepare("INSERT INTO image VALUES (NULL, '$id', '$fileFinameName','$fileSize')");
                            $insert->execute();
                            // header('Location: ../../user');
                            ?>
                            <script>
                            window.location.href="../../user";
                        </script>
                      <?php       
                        // }else{
                        //     echo "size image is long";
                        // }
                    }else{
                        echo '<div class="alert alert-danger" role="alert">there was an error uploading your file !</div>';
                    }
                }else{
                    echo '<div class="alert alert-danger" role="alert">You cannot upload file of this type !</div>';
                }
                $count++;
            }
            

        }
        header("Location: ../../user");
        exit();
        // $file = $_FILES['images'];

        // print_r($file);
    }


?>
