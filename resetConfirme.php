<?php
    include 'configure/configurate.php';
    PauseAdmin();
    SetLog($_SERVER['REQUEST_URI']);
    if(!empty($_COOKIE['xs'])){
        header('Location: index');
        exit();
    }

    if(empty($_COOKIE['id_reset'])){
        header('Location: reset');
        exit();
    }

    
    
    
?>
<!DOCTYPE html>
<html lang="en" <?php //if($lang == 'ar'){echo 'dir="rtl"';} ?> >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

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
    <link href="themes/css/box_login.css" type="text/css" rel="stylesheet" />

    <script src="themes/plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/plugin/jquery/jquery.js"></script>
</head>
<body>
    <?php include 'includes/elements/nav_one.php';?>
    <?php include 'includes/elements/nav_two.php';?>

    <div class="container-fluid">
        <div class="row align-items-center justify-content-center align-self-center">
            <div class="col-10 col-xs-6 col-md-5 col-lg-4">
                <form class="formLogin" action="" id="login" method="post">
                    <h1>Entrez le code de sécurité</h1>
                    <div class="LineLog">
                        <p>The code Verification send to <?= GetOneTeacher($_COOKIE['id_reset'])['email'];?></p>
                        <input required type="number" name="code">
                    </div>
                    <div id="success" ></div>
                    <button type="submit" class="btnLogin">Confirme</button>
                    <!-- <button id="Rereset" class="btnLogin reset">Re-Send</button> -->

                    <!-- <div class="orUser">
                        <div class="lll"></div>
                        <span>or use one of these options</span>
                        <div class="lll"></div>
                    </div>
                    <div class="socialMediaLogin">
                        <a class="SocialLog logFacebook" href="">
                            <i class="fab fa-facebook-f"></i>
                            Countinue with Facebook
                        </a>
                        <a class="SocialLog logGoogle" href="">
                            <i class="fab fa-google"></i>
                            Countinue with Google
                        </a>
                    </div> -->
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

    <!-- AJAX_LOGIN -->
    <script >
        $(document).on('submit','#login',function(e){
            e.preventDefault();
            var Form = $(this);
            $.ajax({
                type:'POST',
                url:'includes/check/check_resetConfirme.php',
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
        // document.getElementById("Rereset").onclick = function(){
        //     e.preventDefault();
        //     var Form = $(this);
        //     $.ajax({
        //         type:'POST',
        //         url:'includes/check/check_reset.php',
        //         beforeSend:function(){
        //             this.prepend('<span style="margin-right: 9px;" class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>');
        //             this.attr('disabled','true');
        //         },
        //         data:new FormData(this),
        //         contentType:false,
        //         processData:false,
        //         success:function(data){
        //             $("#success").html(data);
        //         },
        //         complete:function(data){
        //             $('.spinner-grow').remove();
        //             this.removeAttr('disabled');
        //         }
        //     })
        // }
    </script>
</body>
</html>