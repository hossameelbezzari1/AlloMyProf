<?php
    include 'configure/configurate.php';

    // echo XsToId($_COOKIE['xs']);
    if(empty($_COOKIE['xs'])){
        header('Location: /');
        exit();
    }
    
    PauseAdmin();
    SetLog($_SERVER['REQUEST_URI']);

    if(CheckIsInfoComplaite(XsToId())){
        if(!empty($_SERVER['HTTP_REFERER'])){
            $langRedirect =  $_SERVER['HTTP_REFERER'];
        }else{
            $langRedirect =  'index';
        }
        header('Location: index');
        exit();
    }
?>
<!DOCTYPE html>
<html lang="en" <?php //if($lang == 'ar'){echo 'dir="rtl"';} ?> >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configuration rapide</title>

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

    <script src="themes/plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/plugin/jquery/jquery.js"></script>
</head>
<body>
    <?php include 'includes/elements/nav_one.php';?>
    <?php include 'includes/elements/nav_two.php';?>

    <div class="container">
        
        <div class="row ">
            <?php include 'includes/elements/notification.php';?>
            <div class="col-12 mt-3">
                <div class="row justify-content-center">
                    <div class="col-10 col-sm-8 col-md-6">
                        <h1 class="titlePub" ><?= Text('Enteryourinformations') ?></h1>
                        <form action="includes/check/Edite_configuration" method="post">
                            <h4><?= Text('Informations') ?></h4>
                            <div class="InputLine">
                                <input required type="text" name="fullname" placeholder="<?= Text('FULLNAME') ?>">
                            </div>
                            <div class="InputLine">
                                +212<input required type="text" name="tel" pattern="^(5|6|7)\d{8}$" placeholder="6 00 00 00 00 (<?= Text('example') ?>)" id="">
                            </div>
                            <div class="InputLine">
                                <textarea required name="description" id="description" placeholder="<?= Text('description') ?>" cols="30" rows="3"></textarea>
                            </div>
                            <div class="InputLine">
                                <select id="slct1" name="country" onchange="populate(this.id, 'slct2')">
                                    <?php
                                        foreach(GetAllCountry() as $country){ ?>
                                        <option value="<?php echo $country['id_country'];?>"><?php echo $country['country'];?></option>
                                        <?php }
                                    ?>
                                </select>
                                <select name="city" id="slct2">
                                    <?php
                                        foreach(GetAllVille() as $ville){ ?>
                                            <option value="<?php echo $ville['id_ville']; ?>"><?php echo $ville['ville']; ?></option>
                                        <?php }
                                    ?>
                                </select>
                            </div>
                            <?php
                                $check = false;
                                foreach(GetMatiereGroupType() as $grouptype){ ?>
                                    <h4 id="<?php echo strtoupper($grouptype['typematiere']); ?>"><?php echo strtoupper($grouptype['typematiere']); ?></h4>
                                    <div id="c_<?php echo strtoupper($grouptype['typematiere']); ?>">
                                        <ul  class="ks-cboxtags">
                                        <?php
                                            foreach(GetMatiereGroup($grouptype['typematiere']) as $groupmatiere){ ?>
                                                <li><input name="matiere[]" type="checkbox" <?php if(!$check){ echo 'checked'; $check = true; }?> id="<?php echo $groupmatiere['matiere'];?>" value="<?php echo $groupmatiere['id_matiere'];?>"><label for="<?php echo $groupmatiere['matiere'];?>"><?php echo $groupmatiere['matiere'];?></label></li>
                                        <?php } ?>
                                    </ul>
                                    </div>
                                    
                                <?php }
                            ?>
                            <h4><?= Text("price")?></h4>
                            <div class="InputLine">
                                <input required type="number" name="price" placeholder="<?= Text('price') ?>" id=""><p><?= Text('dh_hour') ?></p>
                            </div>
                            <div class="InputBtn">
                                <button name="submitConfiguration" type="submit"><?= Text('Save&Continue') ?></button>
                            </div>
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

    <script>
        function populate(s1,s2){
            // var s1 = document.getElementById(s1);
            // var s2 = document.getElementById(s2);

            // s2.innerHTML = "";

            // if(s1.value == "Morocco"){
            //     var optionArray = ['fes|Fes','casa|Casa','rabat|Rabat','maknes|Maknes','nc|Marakesh'];
            // }
            // else if(s1.value == "Afghanistan"){
            //     var optionArray = ['flw|efw','rg|w','ger|gr','ge|g','gj|kuj'];
            // }

            // for(var option in optionArray){
            //     var pair = optionArray[option].split("|");
            //     var newoption = document.createElement("option");

            //     newoption.value = pair[0];
            //     newoption.innerHTML = pair[1];
            //     s2.options.add(newoption);
            // }
        }

        // var _LANGUAGE = document.getElementById("LANGUAGE");
        // var c_LANGUAGE = document.getElementById("c_LANGUAGE");
        // _LANGUAGE.onclick = function(){
            
        //     c_LANGUAGE.fadeIn();
        //     alert('ggg');
        // }

    //     $(document).ready(function(){
    // var PDeskription = $('#PDeskription'),
    //     ShowMore = $('#ShowMore'),
    //     clicked = 'clicked';
    //     PDeskription.hide();
    //     //PDeskription.text().substring(5,20);
    //     //alert(PDeskription.text().length);
    //     //PDeskription.text().length = 20;
    

    // ShowMore.click(function(){
    //     if(clicked == 'clicked'){
    //         PDeskription.fadeIn();
    //         //PDeskription.text().substring(5,20);
    //         ShowMore.text('Show less items');
    //         clicked = 'no-clicked';
    //     }else{
    //         PDeskription.fadeOut();
    //         ShowMore.text('Show More');
    //         clicked = 'clicked';
    //     }
//     });
// });
    </script>
</body>
</html>