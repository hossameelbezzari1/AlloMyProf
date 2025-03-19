<?php
    session_start();
    include '../../configure/database.php';

    $id = $_COOKIE['id_teacher'];

    // $folderPath = '../../upload/profiles/';

    // print_r($_POST['image']);

    // echo $_POST['t'];

    // $image_parts = explode(";base64,", $_POST['image']);
    // $image_type_aux = explode("image/", $image_parts[0]);
    // $image_type = $image_type_aux[1];
    // $image_base64 = base64_decode($image_parts[1]);

    // $rand1 = rand(0,9999999999999);
    // $rand2 = rand(0,9999999999999);

    // $file = $folderPath . "fanshat_" . $rand1 . "_" . $rand2. '.png';
    // $fileDATABASE = "fanshat_" . $rand1 . "_" . $rand2. '.png';


    // // date_default_timezone_set(Timezone());
    // $time = date("H:i");
    // $timeProgram = time();
    // $date = date("l M , d Y");
    // $dateProgram = date("d/m/Y");

    // $select = $database->prepare("UPDATE `profiles` SET `profile` = '$fileDATABASE', `time` = '$time', `date` = '$date', `timeProgram` = '$timeProgram', `dateProgram` = '$dateProgram' WHERE `profiles`.`user_id` = '$id'");
    // $select->execute();

    
    // file_put_contents($file, $image_base64);
    // echo json_encode(["image uploaded successfully."]);

	$file = $_FILES['image'];
	$fileName = $_FILES['image']['name'];
	$fileTmpname = $_FILES['image']['tmp_name'];
	$fileError = $_FILES['image']['error'];
	$fileSize = $_FILES['image']['size'];
	$fileType = $_FILES['image']['type'];

	$listExe = explode('.',$fileName);
	$fileExe = strtolower(end($listExe));

	$allowedExe = array('jpg', 'jpeg', 'png');
// echo $fileExe;
	if(in_array( $fileExe ,$allowedExe)){
		if($fileError === 0){
			// if($fileSize < 4000000){
					$fileFinameName = uniqid('',true).'_.'.$fileExe;
					$filePath = '../../assets/upload/profiles/'.$fileFinameName;
					move_uploaded_file($fileTmpname,$filePath);

					$insert = $database->prepare("INSERT INTO `profile` (`id_profile`, `id_teacher`, `src`) VALUES (NULL, '$id', '$fileFinameName')");
					$insert->execute(); ?>
					<script>
					window.location.href="user";
				</script>
			<?php exit();
			// }else{
			// 	echo "size image is long";
			// }
		}else{
			?>
                <div class="alert alert-danger" role="alert">
                <?= Text('thepasswordisincorrect') ?>
                </div>
			<div class="alert alert-danger" role="alert"><?= Text('therewasanerroruploadingyourfile') ?></div>;
			<?php }
	}else{ ?>
		<div class="alert alert-danger" role="alert"><?= Text('Youcannotuploadfileofthistype') ?></div>
	<?php }
	// print_r($file);
	
?>
