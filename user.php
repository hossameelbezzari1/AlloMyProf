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
    if(!IsHaveProfile(XsToId())){
        header('Location: profile');
        exit();
    }


    if(isset($_POST['btnSubmit'])){
        if(!empty($_COOKIE['xs'])){
            $_replied = XsToId();
        }else{
            $_replied = null;
        }
        if(!empty($_POST['comment'])){
            CreateComment(XsToId(),filter_var($_POST['comment'],FILTER_SANITIZE_STRING),$_replied);
        }
    }

    // echo '<pre>';
    // print_r(GetClickBord($_COOKIE['id_teacher']));
    // echo '</pre>';

    
?>

<!DOCTYPE html>
<html lang="en"  <?php //if($lang == 'ar'){echo 'dir="rtl"';} ?> >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= Text('hello'). ' ' . strtoupper(GetTeacher($_COOKIE['id_teacher'])['fullname'])?></title>

    <!-- font awesome -->
    <link rel="stylesheet" href="themes/plugin/fontawesome-pro-5.15.3-web/css/all.css">
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        
    <link href="themes/plugin/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="themes/font/style_font.css" type="text/css" rel="stylesheet" />
    <link href="themes/css/nav_one.css" type="text/css" rel="stylesheet" />
    <link href="themes/css/nav_two.css" type="text/css" rel="stylesheet" />
    <link href="themes/css/home.css" type="text/css" rel="stylesheet" />
        <link rel="stylesheet" href="themes/css/settings.css">
    <link href="themes/css/box_CommandVille.css" type="text/css" rel="stylesheet" />
        <link rel="stylesheet" href="themes/css/box_footer_one.css">
        <link rel="stylesheet" href="themes/css/box_footer_two.css">
        <link rel="stylesheet" href="themes/css/box_configuration.css">
        <link rel="stylesheet" href="themes/css/box_annalys.css">
        <link rel="stylesheet" href="themes/css/user.css">
        <link rel="stylesheet" href="themes/css/copie.css">
        <link rel="stylesheet" href="themes/css/AnalyticsCharts.css">
    <link rel="stylesheet" href="themes/css/box_teacher.css">


    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
    <script src="themes/plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/plugin/jquery/jquery.js"></script>
</head>
<body>
    <?php include 'includes/elements/nav_one.php';?>
    <?php include 'includes/elements/nav_two.php';?>

    <div class="container">
        <div class="row mt-3 mb-3">
            <div class="col-12 col-sm-3">
                
                <div class="<?php if(isMobile()){echo 'inMobile';}else{echo 'inDesktop';} ?> nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <button class="lefted nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true"><?= Text("home")?></button>
                    <button class="lefted nav-link" id="v-pills-infosettings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-infosettings" type="button" role="tab" aria-controls="v-pills-infosettings" aria-selected="false"><?= Text("info_and_settings")?></button>
                    <button class="lefted nav-link" id="v-pills-matiere-tab" data-bs-toggle="pill" data-bs-target="#v-pills-matiere" type="button" role="tab" aria-controls="v-pills-matiere" aria-selected="false"><?= Text("module")?></button>
                    <button class="lefted nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false"><?= Text("profil")?></button>
                    <button class="lefted nav-link" id="v-pills-comments-tab" data-bs-toggle="pill" data-bs-target="#v-pills-comments" type="button" role="tab" aria-controls="v-pills-comments" aria-selected="false"><?= Text("comments")?></button>
                </div>
                
            </div>
            <div class="col-12 col-sm-9 ">
                
                <div class="tab-content" id="v-pills-tabContent">
                    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                    <div class="col-12 mt-3">
                            <h2><?php echo Text('hello');?> <?php echo strtoupper(GetTeacher($_COOKIE['id_teacher'])['fullname']);?></h2>
                        </div>
                        
                        <div class="col-12 mt-3">
                            <h2><?= Text("share")?></h2>
                            <input disabled type="text" id="textcopie" value="<?php echo $_SERVER['SERVER_NAME']."/teacher?id=".$_COOKIE['id_teacher'];?>" name="" id="">
                            <button id="btncopie" onclick="copie()"><i class="fal fa-copy"></i></button>
                            <br>
                            <div class="Allsocial">
                                <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<?php echo $_SERVER['SERVER_NAME']."/teacher?id=".$_COOKIE['id_teacher'];?>" class="Social-iconShare facebook">
                                    <i class="fab fa-facebook"></i> <span>Facebook</span>
                                </a>
                                <a target="_blank" href="https://twitter.com/intent/tweet?text=Best teacher&url=<?php echo $_SERVER['SERVER_NAME']."/teacher?id=".$_COOKIE['id_teacher'];?>" class="Social-iconShare twitter">
                                    <i class="fab fa-twitter"></i> <span>Twitter</span>
                                </a>
                                <a href="whatsapp://send?text=Bonjour je m'appelle <?= strtoupper(GetTeacher($_COOKIE['id_teacher'])['fullname']);?>, professeur de cours de soutien pour plusieurs matères. Et vous pouvez visiter mon profil sur AlloMyProf <?= $_SERVER['SERVER_NAME']?>" data-action="share/whatsapp/share" target="_blank"  class="Social-iconShare whatsapp">
                                    <i class="fab fa-whatsapp"></i> <span>Whatsapp</span>
                                </a>
                                <!-- <a target="_blank" href="" class="Social-iconShare fanshat">
                                    <i class="fal fa-heart"></i> <span>Fanshat</span>
                                </a> -->
                                <a target="_blank" href="http://linkedin.com/sharing/share-offsite/?url=<?php echo $_SERVER['SERVER_NAME']."/teacher?id=".$_COOKIE['id_teacher'];?>" class="Social-iconShare linkedin">
                                    <i class="fab fa-linkedin-in"></i> <span>Linkedin</span>
                                </a>
                            </div>
                        </div>
                        <div class="col-12 mt-3">
                            <div class="boxAnalyticsCharts">
                                <canvas id="myChart"></canvas>
                            </div>
                        </div>

                        
                        <div class="col-12 col-sm-8 col-md-7 mt-3">
                            <div class="BoxAnnalys">
                                <h4><?php echo Text('Yourstudymaterials');?></h4>
                                <ul class="Matiere">
                                    <?php
                                        foreach(GetMatiere($_COOKIE['id_teacher']) as $loopMatiere){ ?>
                                            <li><?php echo $loopMatiere['matiere'];?></li>
                                        <?php }
                                    ?>
                                </ul>
                            </div>
                            
                        </div>

                        <!-- <div class="col-12 col-sm-12 col-md-12 mt-3">
                            <h4><?// Text('Uploadapicture')?></h4>
                            <p><? //Text('Thesephotosthatyouaddwillappearinyourpersonalprofileandthemaximumis7photos')?></p>

                            <div class="myImages">
                                <?php //foreach(GetImages($_COOKIE['id_teacher']) as $loopImages){ ?>
                                <div class="oneImage">
                                    <div class="imgCus"><img src="assets\upload\images\<?php echo $loopImages['src']; ?>" alt="" srcset=""></div>
                                    <div class="BoxLink">
                                        <a href="includes\check\delete_Images?id=<?php echo $loopImages['id_image'];?>"><?= Text('delete')?></a>
                                    </div>
                                </div>
                                <?php //}

                                //if(count(GetImages($_COOKIE['id_teacher'])) < 7){ ?>
                                <form class="oneImage" action="includes/check/upload_images.php" method="post"  enctype="multipart/form-data">
                                    <div class="imgCus">
                                        <label for="btnAddImage"><i class="fal fa-plus"></i></label>
                                    </div>
                                    <input id="btnAddImage" hidden type="file" name="images[]" required multiple accept=".jpg, .jpeg, .png" />
                                    <button  class="btnupload" name="uploadimages" type="submit"><?= Text('Uploadapicture')?></button>
                                </form>
                                <?php //} ?>
                            </div>                
                        </div> -->

                        <!-- <div class="col-12 col-sm-12 col-md-12 mt-3">
                            <h4><?php //echo Text('sendavideo');?></h4>
                            <p><?php //echo Text('Youareentitledtoavideointhisaccountyoucandeleteandadd');?></p>
                            <div class="myVodeo">
                                <?php// if(!empty(GetVideo($_COOKIE['id_teacher']))){ ?>
                                <div class="oneVideo">
                                    <div class="videoCu">
                                        <video controls src="assets/upload/videos/<?php //echo GetVideo($_COOKIE['id_teacher'])['src'];?>"></video>
                                    </div>
                                    <div class="BoxLink">
                                        <a href="includes\check\delete_Video?id=<?php// echo GetVideo($_COOKIE['id_teacher'])['id_video'];?>">Suprimer</a>
                                    </div>
                                </div>
                                <?php// }else{ ?>
                                <form action="" id="uploadvideo" method="post" class="BoxAnnalys" enctype="multipart/form-data">
                                    <div class="imgCus">
                                        <label for="btnAddvideo"><i class="fal fa-plus"></i></label>
                                    </div>
                                    <input id="btnAddvideo" hidden type="file" name="video" required accept="video/*"/>
                                    <button  class="btnupload" name="uploadvideos" type="submit"><?php //echo Text('Uploadavideo')?></button>
                                </form>
                                <?php// } ?>
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">0%</div>
                                </div>
                                <div id="successvideo"></div>
                            </div>
                        </div> -->
                        
                        
                        <div class="col-12 col-sm-8 col-md-7 mt-3">
                            <h4><?= Text('comments')?></h4>
                            <?php

                            if(GetComments(XsToId())){
                                    $countComment = 0;
                                foreach(GetComments(XsToId()) as $Comments){
                                    $countComment++;
                                    if($countComment == 8) break;
                                 ?>
                            <div class="BoxShowComment">
                                <?php
                                    if(XsToId() == $Comments['replied']){
                                        ?>
                                        <div><img src="assets/upload/profiles/<?= GetProfileImage(XsToId());?>" alt=""></div>
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
                            <?php }else{ ?>
                                <div class="alert alert-secondary" role="alert">
                                    <?= Text("no_comments")?>
                                </div>
                            <?php } ?>
                              
                        </div>
                    </div>
                    <div class="tab-pane fade" id="v-pills-infosettings" role="tabpanel" aria-labelledby="v-pills-infosettings-tab">
                        <div id="successGeneral"></div>
                        <h1 class="headerFF"><i class="fal fa-head-vr"></i><p><?= Text("general")?></p></h1>
                        <form action="" method="post" id="General" class="tabcontent">
                            <div class="BoxProfile">
                                
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p><?= Text("fullname")?> :</p>
                                    </div>
                                    <div class="InputMe">
                                        <input type="text" value="<?php echo GetTeacher(GetTeacherId())['fullname'];?>" name="fullname" id="">
                                    </div>
                                </div>
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p><?= Text("email")?> :</p>
                                    </div>
                                    <div class="InputMe">
                                        <input type="email" disabled value="<?php echo GetTeacher(GetTeacherId())['email'];?>" name="email" id="">
                                        <p><?= Text("email_can_not_be_changer")?></p>
                                    </div>
                                </div>
                                
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p><?= Text("mobile")?> :</p>
                                    </div>
                                    <div class=" InputMe">
                                        <div class="mobileOT">
                                        <select class="etatP" name="etat" id="">
                                            <?php foreach(Country() as $country){ ?>
                                            <option <?php if($country['code'] == 'MA') echo 'selected' ?> value="<?= $country['dial_code'] ?>"><?= $country['dial_code'] ?></option>
                                            <?php }?>
                                        </select>
                                        <input type="tel" required pattern="^\d{9}$" placeholder="6 00 00 00 00 (<?= Text("example")?>)" value="<?php
                                        foreach(Country() as $country){
                                            if (str_contains(GetTeacher(GetTeacherId())['tel'],$country['dial_code'] )) {
                                                echo  str_replace($country['dial_code'], '', GetTeacher(GetTeacherId())['tel']);
                                                break;
                                            }
                                        }
                                        ?>" name="number" id="">
                                        </div>
                                    </div>
                                </div>
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p></p>
                                    </div>
                                    <div class="InputMe">
                                        <button type="submit" name="btnsaveProfile"><?= Text("save")?></button>
                                    </div>
                                </div>
                                
                            </div>
                        </form>
                        <h1 class="headerFF"><i class="fal fa-lock-alt"></i><p><?= Text("security")?></p></h1>
                        <div id="successSecurity"></div>
                        <form action="" method="post" id="Security" class="tabcontent">
                            <div class="BoxProfile">
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p><?= Text("last_password")?> :</p>
                                    </div>
                                    <div class="InputMe">
                                        <input type="password" name="lastpassword" id="">
                                    </div>
                                </div>
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p><?= Text("new_password")?> :</p>
                                    </div>
                                    <div class="InputMe">
                                        <input type="password" name="newpassword" id="">
                                    </div>
                                </div>
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p><?= Text("re_password")?> :</p>
                                    </div>
                                    <div class="InputMe">
                                        <input type="password" name="repassword" id="">
                                    </div>
                                </div>
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p></p>
                                    </div>
                                    <div class="InputMe">
                                        <button name="btnChangePassword"><?= Text("save")?></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <h1 class="headerFF"><i class="far fa-info"></i><p><?= Text("info")?></p></h1>
                        <div id="successInfo"></div>
                        <form action="" method="post" id="Info" class="tabcontent">
                            <div class="BoxProfile">
                                
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p><?= Text("description")?> :</p>
                                    </div>
                                    <div class="InputMe">
                                        <textarea name="description" id="" cols="30" rows="10"><?php echo GetTeacher(GetTeacherId())['description'];?></textarea>
                                        </div>
                                </div>
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p><?= Text("price")?> :</p>
                                    </div>
                                    <div class="InputMe">
                                        <input type="text" pattern="^\d{2,3}$" value="<?php echo GetTeacher(GetTeacherId())['price'];?>" name="price" id="">
                                        <p><?= Text("price_for_hour")?></p>
                                    </div>
                                </div>
                                
                               
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p></p>
                                    </div>
                                    <div class="InputMe">
                                        <button name="btnsaveProfile"><?= Text("save")?></button>
                                    </div>
                                </div>
                                
                            </div>
                        </form>
                        <h1 class="headerFF"><i class="fal fa-user-circle"></i><p><?= Text("profil")?></p></h1>
                        <div id="successProfile"></div>
                        <form enctype="multipart/form-data" action="" method="post" id="Profile" class="tabcontent">
                            <div class="BoxProfile">
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p><?= Text("your_image_here")?> :</p>
                                    </div>
                                    <div class="InputMe">
                                        <input type="file" name="image" id="">
                                        <p><?= Text('Putapersonalphotoofyouraccountinordertocompletethestepsofactivatingyouraccountandforyouraccounttobeactivatedthephotomustbeavailableonyourprofilanditisnecessarythatyourfacialfeaturesappearonyouraccountandweperiodicallyreviewallnoncompliantaccountsandaccountsaredeletedbyourgroupparty')?></p>
                                    </div>
                                </div>
                                
                                <div class="LineProfile">
                                    <div class="NameFunction">
                                        <p></p>
                                    </div>
                                    <div class="InputMe">
                                        <button type="submit" name="btnsaveProfile_"><?= Text("save")?></button>
                                    </div>
                                </div>
                                
                            </div>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="v-pills-matiere" role="tabpanel" aria-labelledby="v-pills-matiere-tab">
                        <div id="successMatiere"></div>
                        <form enctype="multipart/form-data" action="" method="post" id="matiere" class="tabcontent">
                        <?php
                            foreach(GetMatiereGroupType() as $grouptype){ ?>
                                <h4><?php echo strtoupper($grouptype['typematiere']); ?></h4>
                                <ul class="ks-cboxtags">
                                    <?php
                                        foreach(GetMatiereGroup($grouptype['typematiere']) as $groupmatiere){ ?>
                                            <li><input name="matiere[]" type="checkbox" <?php if(IsInMatiere($_COOKIE['id_teacher'],$groupmatiere['id_matiere'])){ echo 'checked'; $check = true; }?> id="<?php echo $groupmatiere['matiere'];?>" value="<?php echo $groupmatiere['id_matiere'];?>"><label for="<?php echo $groupmatiere['matiere'];?>"><?php echo $groupmatiere['matiere'];?></label></li>
                                    <?php } ?>
                                </ul>
                            <?php }
                        ?>
                            <div class="InputMe">
                                <button type="submit" class="save" name="btnsavematiere"><?= Text("save")?></button>
                            </div>
                        </form>

                    </div>
                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                        <div class="boxProfile">

                            <?php
                                if(ifProfileValide(XsToId())){ ?>
                                    <img id="profilTe" src="assets/upload/profiles/<?php echo GetProfileImage(XsToId());?>" alt="">
                                <?php }else{ ?>
                                    <img id="profilTe" src="assets/images/material/imagesAno.png" alt="">
                                <?php }
                            ?>
                            <div class="InfoProfile">
                                <h2><?php echo strtoupper(GetTeacher(XsToId())['fullname']);?></h2>
                                <div class="infoTwo">
                                    <div><img src="assets/images/material/drapeau/<?php echo GetTeacher(XsToId())['src'];?>" alt=""></div>
                                    <p class="villeProf"><?php echo GetTeacher(XsToId())['ville'];?></p>
                                    <div class="AllStart">
                                <?php

                                for($i = 1 ; $i <= Start($_COOKIE['id_teacher']) ; $i++ ){ ?>
                                    <div class="start"><i class="fas fa-star"></i></div>
                                <?php }

                                for($i = 1 ; $i <= 5-Start($_COOKIE['id_teacher']) ; $i++ ){ ?>
                                    <div class="start"><i class="far fa-star"></i></div>
                                <?php }
                                ?>
                            </div>
                                </div>
                                <a target="blank" class="contac" href="includes/redirect/Clicked_teacher?phone=<?php echo GetTeacher(XsToId())['tel'];?>&teacher=<?php echo XsToId();?>"><i class="fab fa-whatsapp"></i> <?= Text('Contactprof') ?></a>
                            </div>
                            </div>
                            <h4><?php echo text('price');?></h4>
                            <h1 class="pric"><?php echo GetTeacher(XsToId())['price'];?> <span> <?= Text("dh_hour")?></span></h1>
                            <h4><?php echo text('Subjects');?></h4>
                            <ul class="Matiere">
                            <?php
                                foreach(GetMatiere(XsToId()) as $loopMatiere){ ?>
                                    <li><?php echo $loopMatiere['matiere'];?></li>
                                <?php }
                            ?>
                            </ul>
                            <h4><?php echo text('mobile');?></h4>
                            <p><?php echo GetTeacher(XsToId())['tel'];?></p>                
                            
                            <!-- <div class="ShowINJavasc">
                            <?php
                                //if(!empty(GetVideo(XsToId()))){ ?>
                                <video controls class="elemJavascriConItemVideo" src="assets/upload/videos/<?php echo GetVideo(XsToId())['src'];?>"></video>
                                <?php //}
                              //  foreach(GetImages(XsToId()) as $loopImages){ ?>
                                    <div><img class="elemJavascriConItem" src="assets/upload/images/<?php echo $loopImages['src'];?>" alt=""></div>
                                <?php// }

                            ?>
                            </div> -->
                        </div>
                        <div class="tab-pane fade" id="v-pills-comments" role="tabpanel" aria-labelledby="v-pills-comments-tab">
                            <h4><?php echo text('comments');?></h4>
                            <?php
                                foreach(GetComments(XsToId()) as $Comments){  ?>
                            <div class="BoxShowComment">
                                <?php
                                    if(XsToId() == $Comments['replied']){
                                        ?>
                                        <div><img src="assets/upload/profiles/<?= GetProfileImage(XsToId());?>" alt=""></div>
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
                                        <div><img src="assets/upload/profiles/<?= GetProfileImage(XsToId());?>" alt="know"></div>
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

    <!-- AJAX_Upload Video -->
    <!-- <script >
        $(document).on('submit','#uploadvideo',function(e){
            e.preventDefault();
            var Form = $(this);
            $.ajax({
                type:'POST',
                url:'includes/check/upload_video.php',
                beforeSend:function(){
                    Form.find("button[type='submit']").prepend('<span style="margin-right: 9px;" class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>');
                    Form.find("button[type='submit']").attr('disabled','true');
                },
                data:new FormData(this),
                contentType:false,
                processData:false,
                success:function(data){
                    $("#successvideo").html(data);
                },
                complete:function(data){
                    $('.spinner-grow').remove();
                    Form.find("button[type='submit']").removeAttr('disabled');
                }
            })
        });
    </script> -->

    <!-- Upload Video -->
    <script>
        $(Document).ready(function(){

            
            
            // var videoData = $('#video');
            
            var PrograssBar = $('.progress-bar');
            $('#uploadvideo').submit(function(e){
                // alert('submit');

                e.preventDefault();
                $.ajax({
                    xhr: function() {
                        var xhr = new window.XMLHttpRequest();
                        xhr.upload.addEventListener("progress", function(evt) {
                            if (evt.lengthComputable) {
                                var percentComplete = ((evt.loaded / evt.total) * 100);
                                $(".progress-bar").width(percentComplete + '%');
                                $(".progress-bar").html(parseInt(percentComplete)+'%');
                            }
                        }, false);
                        return xhr;
                    },
                    type: 'POST',
                    url:'includes/check/upload_video.php',
                    data: new FormData(this),
                    contentType: false,
                    cache: false,
                    processData:false,
                    beforeSend: function(){
                        $(".progress-bar").width('0%');
                        //alert('befor send');
                    },
                    error:function(){
                        $('#uploadStatus').html('<p style="color:#EA4335;">File upload failed, please try again.</p>');
                        alert('error');
                    },
                    success: function(data,ll,ff){
                        $("#successvideo").html(data);
                        console.log(data);
                    }
                });
                
            });

            // File type validation
            // $("#video").change(function(){
            //     var allowedTypes = ['video/mp4', 'video/amv', 'video/m4p ', 'video/m4v', 'video/mpg', 'video/mp2', 'video/mpeg', 'video/mpe', 'video/mpv', 'video/avi', 'video/wmv', 'video/3gp'];
            //     var file = this.files[0];
            //     var fileType = file.type;
            //     if(!allowedTypes.includes(fileType)){
            //         alert('Please select a video');
            //         $(this).val('');
            //         return false;
            //     }
            // });
        });
    </script>

    <!-- charts -->
    <script src="themes/plugin/charts/dist/chart.js"></script>
    <?php
        $listData = GetClickBord($_COOKIE['id_teacher']);
        $listData2 = array();
        foreach($listData as $loop ){
            array_push($listData2, $loop['count']);
        }
        $listData3 = array_values($listData2);



        $Data = GetClickBord($_COOKIE['id_teacher']);
        $Data2 = array();
        foreach($Data as $loop2 ){
            array_push($Data2, $loop['date']);
        }
        $Data3 = array_values($Data2);
        // substr("abcdef", 2, -1);

        
    ?>
    <script>
        const listData = <?php echo json_encode($listData3); ?>;
        console.log(listData);
        const labels = <?php echo json_encode($Data3); ?>;

        const data = {
            labels: labels,
            datasets: [{
            label: '<?= Text('Statisticsonthenumberofclicks');?>',
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: listData,
            }]
        };

        const config = {
            type: 'line',
            data: data,
            options: {}
        };
        const myChart = new Chart(
            document.getElementById('myChart'),
            config
        );
    </script>



    <!-- settings -->

    <!-- Tabs Scripte -->
    <script src="themes/js/tabs.js"></script>
    
    <script src="themes/js/resize_Just_nav.js"></script>

    <!-- AJAX_General -->
    <script >
        $(document).on('submit','#General',function(e){
            e.preventDefault();
            var Form = $(this);
            $.ajax({
                type:'POST',
                url:'includes/check/Edite_General.php',
                beforeSend:function(){
                    Form.find("button[type='submit']").prepend('<span style="margin-right: 9px;" class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>');
                    Form.find("button[type='submit']").attr('disabled','true');
                },
                data:new FormData(this),
                contentType:false,
                processData:false,
                success:function(data){
                    $("#successGeneral").html(data);
                },
                complete:function(data){
                    $('.spinner-grow').remove();
                    Form.find("button[type='submit']").removeAttr('disabled');
                }
            })
        });
    </script>
    
    <!-- AJAX_Security -->
    <script >
        $(document).on('submit','#Security',function(e){
            e.preventDefault();
            var Form = $(this);
            $.ajax({
                type:'POST',
                url:'includes/check/Edite_Password.php',
                beforeSend:function(){
                    Form.find("button[type='submit']").prepend('<span style="margin-right: 9px;" class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>');
                    Form.find("button[type='submit']").attr('disabled','true');
                },
                data:new FormData(this),
                contentType:false,
                processData:false,
                success:function(data){
                    $("#successSecurity").html(data);
                },
                complete:function(data){
                    $('.spinner-grow').remove();
                    Form.find("button[type='submit']").removeAttr('disabled');
                }
            })
        });
    </script>

    <!-- AJAX_Info -->
    <script >
        $(document).on('submit','#Info',function(e){
            e.preventDefault();
            var Form = $(this);
            $.ajax({
                type:'POST',
                url:'includes/check/Edite_Info.php',
                beforeSend:function(){
                    Form.find("button[type='submit']").prepend('<span style="margin-right: 9px;" class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>');
                    Form.find("button[type='submit']").attr('disabled','true');
                },
                data:new FormData(this),
                contentType:false,
                processData:false,
                success:function(data){
                    $("#successInfo").html(data);
                },
                complete:function(data){
                    $('.spinner-grow').remove();
                    Form.find("button[type='submit']").removeAttr('disabled');
                }
            })
        });
    </script>
    <!-- AJAX_Matiere -->
    <script >
        $(document).on('submit','#matiere',function(e){
            e.preventDefault();
            var Form = $(this);
            $.ajax({
                type:'POST',
                url:'includes/check/Edite_matiere.php',
                beforeSend:function(){
                    Form.find("button[type='submit']").prepend('<span style="margin-right: 9px;" class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>');
                    Form.find("button[type='submit']").attr('disabled','true');
                },
                data:new FormData(this),
                contentType:false,
                processData:false,
                success:function(data){
                    $("#successMatiere").html(data);
                },
                complete:function(data){
                    $('.spinner-grow').remove();
                    Form.find("button[type='submit']").removeAttr('disabled');
                }
            })
        });
    </script>

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
                    $("#successProfile").html(data);
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

