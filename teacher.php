<?php
    include 'configure/configurate.php';
    PauseAdmin();
    SetLog($_SERVER['REQUEST_URI']);

    if(!empty($_GET['id'])){
        $teacher = filter_var( $_GET['id'] ,FILTER_SANITIZE_NUMBER_INT );
    }else{
        header('Location: index');
        exit();
    }

    if(!CheckIsTeacher($teacher)){
        header('Location: index');
        exit();
    }

    if(isset($_POST['btnSubmit'])){
        if(!empty($_COOKIE['xs'])){
            $replied = XsToId();
        }else{
            $replied = null;
        }
        if(!empty($_POST['comment'])){
            CreateComment($teacher,filter_var($_POST['comment'],FILTER_SANITIZE_STRING),$replied);
        }
    }

    if(!CheckIsInfoComplaite($teacher)){
        header('Location: index');
        exit();
    }
    // echo '<pre>';
    // print_r(Start($teacher));
    // echo '</pre>';
    // echo $teacher;

?>
<!DOCTYPE html>
<html lang="en"  <?php //if($lang == 'ar'){echo 'dir="rtl"';} ?> >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= strtoupper(GetTeacher($teacher)['fullname']);?></title>

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
    <link rel="stylesheet" href="themes/css/box_teacher.css">
    <link rel="stylesheet" href="themes/css/user.css">
    <link rel="stylesheet" href="themes/css/copie.css">

    <script src="themes/plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/plugin/jquery/jquery.js"></script>
    
</head>
<body>
    <?php include 'includes/elements/nav_one.php';?>
    <?php include 'includes/elements/nav_two.php';?>

    <div class="container">
        
        <div class="row justify-content-center">
            <div class="col-10 col-sm-8 mt-3">
                <div class="boxProfile">

                    <?php
                        if(ifProfileValide($teacher)){ ?>
                            <img id="profilTe" src="assets/upload/profiles/<?php echo GetProfileImage($teacher);?>" alt="">
                        <?php }else{ ?>
                            <img id="profilTe" src="assets/images/material/imagesAno.png" alt="">
                        <?php }
                    ?>
                    
                    <div class="InfoProfile">
                        <h2><?php echo strtoupper(GetTeacher($teacher)['fullname']);?></h2>
                        <div class="infoTwo">
                            <div class="MiniInfor">
                                <div><img src="assets/images/material/drapeau/<?php echo GetTeacher($teacher)['src'];?>" alt=""></div>
                                <p class="villeProf"><?php echo GetTeacher($teacher)['ville'];?></p>
                            </div>
                            <div class="AllStart">
                                <?php

                                for($i = 1 ; $i <= Start($teacher) ; $i++ ){ ?>
                                    <div class="start"><i class="fas fa-star"></i></div>
                                <?php }

                                for($i = 1 ; $i <= 5-Start($teacher) ; $i++ ){ ?>
                                    <div class="start"><i class="far fa-star"></i></div>
                                <?php }
                                ?>
                            </div>
                            
                        </div>
                        <a target="blank" class="contac" href="includes/redirect/Clicked_teacher?phone=<?php echo GetTeacher($teacher)['tel'];?>&teacher=<?php echo $teacher;?>"><i class="fab fa-whatsapp"></i> <?= Text('Contactprof') ?></a>
                    </div>
                </div>
                <div class="col-12 mt-3">
                            <h2>Share to</h2>
                            <input disabled type="text" id="textcopie" value="<?php echo $_SERVER['SERVER_NAME']."/teacher?id=".$teacher;?>" name="" id="">
                            <button id="btncopie" onclick="copie()"><i class="fal fa-copy"></i></button>
                            <br>
                            <div class="Allsocial">
                                <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo $_SERVER['SERVER_NAME']."/teacher?id=".$teacher;?>" class="Social-iconShare facebook">
                                    <i class="fab fa-facebook"></i> <span>Facebook</span>
                                </a>
                                <a target="_blank" href="https://twitter.com/intent/tweet?text=Best teacher&url=<?php echo $_SERVER['SERVER_NAME']."/teacher?id=".$teacher;?>" class="Social-iconShare twitter">
                                    <i class="fab fa-twitter"></i> <span>Twitter</span>
                                </a>
                                <a target="_blank" href="whatsapp://send/text=Best teacher : http://www.mohtarif.me/2022/05/icloud-apple-2022.html" class="Social-iconShare whatsapp">
                                    <i class="fab fa-whatsapp"></i> <span>Whatsapp</span>
                                </a>
                                <!-- <a target="_blank" href="" class="Social-iconShare fanshat">
                                    <i class="fal fa-heart"></i> <span>Fanshat</span>
                                </a> -->
                                <a target="_blank" href="http://linkedin.com/sharing/share-offsite/?url=<?php echo $_SERVER['SERVER_NAME']."/teacher?id=".$teacher;?>" class="Social-iconShare linkedin">
                                    <i class="fab fa-linkedin-in"></i> <span>Linkedin</span>
                                </a>
                            </div>
                        </div>
                <h4><?php echo text('price');?></h4>
                <h1 class="pric"><?php echo GetTeacher($teacher)['price'];?> DH<span>/ Heurs</span></h1>
                <h4><?php echo text('Subjects');?></h4>
                <ul class="Matiere">
                    <?php
                        foreach(GetMatiere($teacher) as $loopMatiere){ ?>
                            <li><?php echo $loopMatiere['matiere'];?></li>
                        <?php }
                    ?>
                </ul>
                <h4><?php echo text('mobile');?></h4>
                <p><?php echo GetTeacher($teacher)['tel'];?></p>                
                
                <!-- <div class="ShowINJavasc">
                    <?php
                        //if(!empty(GetVideo($teacher))){ ?>
                           <video controls class="elemJavascriConItemVideo" src="assets/upload/videos/<?php// echo GetVideo($teacher)['src'];?>"></video>
                        <?php //}
                       // foreach(GetImages($teacher) as $loopImages){ ?>
                            <div><img class="elemJavascriConItem" src="assets/upload/images/<?php// echo $loopImages['src'];?>" alt=""></div>
                        <?php //}

                    ?>
                    
                </div> -->
            </div>
        </div>
        <?php
            if(count(SuggestTeacher(GetTeacher($teacher)['id_ville'] , $teacher)) > 0) { ?>
        <div class="row justify-content-center">
            <div class="col-10 col-sm-8 mt-3">
                <h4><?php echo text('otherteachers');?></h4>
                <div class="ShowINJavasc">
                    <?php
                        foreach(SuggestTeacher(GetTeacher($teacher)['id_ville'] , $teacher) as $Segguest){ ?>
                            <div class="TeacherOne">
                                <a href="?id=<?php echo $Segguest['id_teacher'];?>">
                                    <img class="ProfileTe" src="assets/upload/profiles/<?php echo $Segguest['src'];?>" alt="">
                                    <p><?php echo strtoupper($Segguest['fullname']);?></p>
                                    <p class="ote"><?php echo $Segguest['ville'];?>, <?php echo $Segguest['price'];?>Dh</p>
                                </a>
                            </div>
                        <?php }
                    ?>
                </div>
            </div>
        </div>
        <?php }
                ?>
        <div class="row justify-content-center">
            <div class="col-10 col-sm-8 mt-3">
                <h4><?php echo text('comments');?></h4>
                <?php
                    foreach(GetComments($teacher) as $Comments){ ?>
                <div class="BoxShowComment">
                    <?php
                        if($teacher == $Comments['replied']){ ?>
                            <div><img src="assets/upload/profiles/<?= GetProfileImage($teacher);?>" alt=""></div>
                        <?php }else{ ?>
                            <div><img src="assets/images/material/imagesAno.png" alt=""></div>
                        <?php }
                    ?>
                    
                    <div class="BoxComment">
                        <div><p class="BoxSeeComm"><?php echo $Comments['comments'];?></p></div>
                    </div>
                </div>
                    <?php }
                ?>
                <div class="BoxComment">
                    <?php
                        if(!empty($_COOKIE['xs'])){ ?>
                            <div><img src="assets/upload/profiles/<?= GetProfileImage($teacher);?>" alt="know"></div>
                        <?php }else{ ?>
                            <div><img src="assets/images/material/imagesAno.png" alt="unkown"></div>
                        <?php }
                    ?>
                    <div class="BoxComment">
                        <form method="post" action="" class="BoxWriteCoom">
                            <textarea class="writeComment" name="comment" placeholder="<?php echo text('yourcommenthere');?>" id="" rows="3"></textarea>
                            <button name="btnSubmit" type="submit"><?php echo text('iwillcomment');?></button>
                        </form>
                    </div>
                </div>
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
    
    <script src="themes/js/copie.js"></script>
    <!-- <script src="themes/js/type_property.js"></script>
    <script src="themes/js/CommandVille.js"></script> -->
</body>
</html>