<?php
    
    include 'configure/configurate.php';
    if(empty($_COOKIE['xs'])){
        header('Location: /');
        exit();
    }
    PauseAdmin();
    SetLog($_SERVER['REQUEST_URI']);

    

    // CheckIsInfoComplaite($_COOKIE['id_teacher']);

    if(!IsInfoComplait(XsToId())){
        header('Location: configuration');
        exit();
    }

    // if(!IsHaveProfile($_COOKIE['id_teacher'])){
    //     header('Location: profile');
    //     exit();
    // }

?>
<!DOCTYPE html>
<html lang="en" <?php //if($lang == 'ar'){echo 'dir="rtl"';} ?> >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bonjour</title>

    <!-- font awesome -->
    <link rel="stylesheet" href="themes/plugin/fontawesome-pro-5.15.3-web/css/all.css">
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        
    <link href="themes/plugin/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="themes/font/style_font.css" type="text/css" rel="stylesheet" />
    <link href="themes/css/nav_one.css" type="text/css" rel="stylesheet" />
    <link href="themes/css/nav_two.css" type="text/css" rel="stylesheet" />
    <link href="themes/css/home.css" type="text/css" rel="stylesheet" />
    <link href="themes/css/box_CommandVille.css" type="text/css" rel="stylesheet" />
        <link rel="stylesheet" href="themes/css/box_footer_one.css">
        <link rel="stylesheet" href="themes/css/box_footer_two.css">
        <link rel="stylesheet" href="themes/css/box_configuration.css">
        <link rel="stylesheet" href="themes/css/box_annalys.css">
        <link rel="stylesheet" href="themes/css/user.css">

    <script src="themes/plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/plugin/jquery/jquery.js"></script>
</head>
<body>
    <?php include 'includes/elements/nav_one.php';?>
    <?php include 'includes/elements/nav_two.php';?>
    

    <div class="container">
        <div class="row justify-content-center">
            <?php include 'includes/elements/notification.php';?>
            <div class="col-12 col-sm-6 col-md-6 mt-3 centerHeader">
                <h2><?= Text('hello') . ' '. strtoupper(GetTeacher($_COOKIE['id_teacher'])['fullname']);?></h2>
            </div>
        </div>
        
        <div class="row justify-content-center">
            <div class="col-10 col-sm-10 col-md-6">
                <form enctype="multipart/form-data" action="" method="post" id="Profile" class="tabcontent">
                    <div class="BoxProfile">
                        <div class="row justify-content-center">
                            <div class="col-10 kdjcuih"  >
                                <div class="col-4">
                                    <img width='140px' src="assets\images\material\test_1.jpg" alt="">
                                    <p><i  style='color: #00d472' class="far fa-check"></i></p>
                                    
                                </div>
                                <div class="col-4">
                                    <img width='140px' src="assets\images\material\test_2.jpg" alt="">
                                    <p><i style='color: red' class="far fa-times"></i></p>
                                </div>
                                <div class="col-4">
                                    <img width='140px' src="assets\images\material\test_3.jpg" alt="">
                                    <p><i style='color: red'  class="far fa-times"></i></p>
                                </div>
                            </div>
                        </div>
                        <div class="LineProfile">
                            <div class="InputMe mb-2">
                                <label class="iugi" for="file"><img class="uploadimg" src="assets\upload\images\imagesAno.png" alt=""></label>
                                <p class="jhb"><?= Text('Putapersonalphotoofyouraccountinordertocompletethestepsofactivatingyouraccountandforyouraccounttobeactivatedthephotomustbeavailableonyourprofilanditisnecessarythatyourfacialfeaturesappearonyouraccountandweperiodicallyreviewallnoncompliantaccountsandaccountsaredeletedbyourgroupparty')?></p>
                                <label class="bhg" for="file" class="label-file"><?= Text('Chooseapicture') ?></label>
                                <input id="file" name="image" class="input-file" type="file" accept="image/*">
                            </div>
                        </div>
                        <div id="success"></div>
                        <div class="LineProfile">
                            <div class="NameFunction">
                                <p></p>
                            </div>
                            <div class="InputMe">
                                <button type="submit" class="btnupload" name="btnsaveProfile_"><i class="fal fa-arrow-to-top"></i> <?= Text('Uploadapicture') ?></button>
                            </div>
                        </div>
                        
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    
    
    <?php include 'includes/elements/footer_two.php';?>
    <?php include 'includes/elements/footer_one.php';?>
    <!-- bootstrap js -->
    <script src="themes/plugin/bootstrap/js/bootstrap.min.js"></script>
    <!-- jquery -->
    <script src="themes/plugin/jquery/jquery.js"></script>
    <script src="themes/js/resize_Just_nav.js"></script>
    <!-- <script src="themes/js/type_property.js"></script>
    <script src="themes/js/CommandVille.js"></script> -->

    <!-- AJAX_Profile -->
    <script >
        $(document).on('submit','#Profile',function(e){
            e.preventDefault();
            var Form = $(this);
            $.ajax({
                type:'POST',
                url:'includes/check/Edite_profile.php',
                beforeSend:function(){
                    Form.find("button[type='submit']").prepend('<span style="margin-right: 9px;" class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>');
                    Form.find("button[type='submit']").attr('disabled','true');
                },
                data:new FormData(this),
                contentType:false,
                processData:false,
                success:function(data){
                    $("#success").html(data);
                },
                complete:function(data){
                    $('.spinner-grow').remove();
                    Form.find("button[type='submit']").removeAttr('disabled');
                }
            })
        });
    </script>
</body>
</html>