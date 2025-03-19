<?php
    
    include 'configure/configurate.php';
    PauseAdmin();
    SetLog($_SERVER['REQUEST_URI']);

    if(!empty($_GET['id'])){
        $id = filter_var( $_GET['id'] ,FILTER_SANITIZE_NUMBER_INT );
    }else{
        $id = 1;
    }

    // echo '<pre>';
    // print_r(GetTopTeacher());
    // echo '</pre>';
?>
<!DOCTYPE html>
<html lang="en" <?php //if($lang == 'ar'){echo 'dir="rtl"';} ?> >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cookies</title>

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
        <link rel="stylesheet" href="themes/css/faq.css">

    <script src="themes/plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/plugin/jquery/jquery.js"></script>
</head>
<body <?php if($lang == 'ar'){echo 'dir="rtl"';} ?>>
    <?php include 'includes/elements/nav_one.php';?>
    <?php include 'includes/elements/nav_two.php';?>
    <?php include 'includes/elements/nav_three.php';?>    
    <div class="container">
        <div class="row mt-5 justify-content-between">
            <div class="col-12 col-sm-12 boxFaq blog_box">
                <h1 class="titlePub" ><?php echo GetCookies($lang)['title'];?></h1>
                <p><?php echo GetCookies($lang)['text'];?></p>
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
</body>
</html>