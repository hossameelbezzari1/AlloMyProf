<?php
    include 'configure/configurate.php';
    PauseAdmin();
    SetLog($_SERVER['REQUEST_URI']);
    




    if(!empty($_GET['ville'])){
        $ville = filter_var($_GET['ville'], FILTER_SANITIZE_STRING);
    }else{
        $ville = '_______';
    }

    if(!empty($_GET['nomprof'])){
        $nomprof = filter_var($_GET['nomprof'], FILTER_SANITIZE_STRING);
    }else{
        $nomprof = '_______';
    }

    if(!empty($_GET['matiere'])){
        $matiere = filter_var($_GET['matiere'], FILTER_SANITIZE_STRING);
        // $matiere = '';
    }else{
        $matiere = '_______';
    }


    $page = (isset($_GET['page'])) ? (int) filter_var($_GET['page'], FILTER_SANITIZE_NUMBER_INT) : 1;
    $select = $database->prepare("SELECT * FROM teacher t , infoteacher i , ville v , teachermatier m ,matiere ma , profile p WHERE t.id_teacher = i.id_teacher AND t.id_ville = v.id_ville AND m.id_teacher = t.id_teacher AND m.id_matiere = ma.id_matiere AND p.id_teacher = t.id_teacher AND ( (fullname like '%$nomprof%') OR (v.ville = '$ville' AND ma.matiere = '$matiere') ) GROUP BY t.id_teacher , p.id_teacher");
    // $select = $database->prepare("SELECT * FROM teacher t , infoteacher i , profile p , ville v WHERE t.id_teacher = i.id_teacher AND t.id_teacher = p.id_teacher AND t.id_ville = v.id_ville AND i.fullname like '%$nomprof%' OR (v.ville = '$ville' AND ma.matiere = '$matiere')  ORDER BY t.id_teacher DESC");
    // $select = $database->prepare("SELECT * FROM produit p , categorie c , image i WHERE i.id_produit = p.id_produit AND p.id_categorie = c.id_categorie AND c.nomCategorie LIKE '%$categorie%' AND nomproduit LIKE '%$result%' AND prixvente BETWEEN $priceMin AND $priceMax ORDER BY p.id_produit DESC");
    $select->execute();
    $count = $select->rowCount();
    if($count == 0){
        $count_ = 1;
    }else{
        $count_ = $count;
    }

    $totalCount = (int) $count_;
    $pageLimit = 20;
    $pagesNum = ceil($totalCount / $pageLimit);
    $offset = ($page -1) * $pageLimit;
    

    $select = $database->prepare("SELECT * FROM teacher t , infoteacher i , ville v , teachermatier m ,matiere ma , profile p WHERE t.id_teacher = i.id_teacher AND t.id_ville = v.id_ville AND m.id_teacher = t.id_teacher AND m.id_matiere = ma.id_matiere AND p.id_teacher = t.id_teacher AND ( (fullname like '%$nomprof%') OR (v.ville = '$ville' AND ma.matiere = '$matiere') ) GROUP BY t.id_teacher , p.id_teacher LIMIT $pageLimit OFFSET $offset ");
    // $select = $database->prepare("SELECT i.src as imgpub , p.* , c.* FROM produit p , categorie c , image i WHERE i.id_produit = p.id_produit AND p.id_categorie = c.id_categorie AND c.nomCategorie LIKE '%$categorie%' AND nomproduit LIKE '%$result%' AND prixvente BETWEEN $priceMin AND $priceMax ORDER BY p.id_produit DESC LIMIT $pageLimit OFFSET $offset");
    $select->execute();
    $fetch = $select->fetchAll();
    
    // var_dump($page,$totalCount,$pageLimit, $pagesNum);
    // echo 'page '. $page . '<BR>';
    // echo 'total '. $totalCount. '<BR>';
    // echo 'limit '. $pageLimit. '<BR>';
    // echo 'num '. $pagesNum. '<BR>';
    // echo 'offset '. $offset. '<BR>';

    if(!ValidatePageRecherche($page, $pagesNum)){
        header('Location: recherche?ville='.$ville. '&matiere='.$matiere. '&nomprof='.$nomprof.'&page='. $pagesNum);
        exit();
    }
    // echo '<pre>';
    // print_r($matiere);
    // echo '</pre>';
?>
<!DOCTYPE html>
<html lang="en" <?php //if($lang == 'ar'){echo 'dir="rtl"';} ?> >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>

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
    <link rel="stylesheet" href="themes/css/box_recherche.css">

    <script src="themes/plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/plugin/jquery/jquery.js"></script>
    
</head>
<body>
    <?php include 'includes/elements/nav_one.php';?>
    <?php include 'includes/elements/nav_two.php';?>

    <div class="container">
        
        <div class="row justify-content-center mt-3">
            <div class="col-10 col-md-3 mb-3">
                <form method="GET" class="BoxRecherche" id="BoxRecherche">
                    
                    <input type="text" hidden name="page" value="1">
                    <h3 class="TitreSearch"><?php echo text('search');?></h3>
                    <div class="row">
                        <div class="col-12">
                            <div class="LineRecherche">
                                <p><?php echo text('city');?></p>
                                <div class="InputRecherche">
                                    <i class="fal fa-search"></i>
                                    <select name="ville" id="ville">
                                        <?php
                                            foreach(GetAllVille() as $allVille){ ?>
                                                <option value="<?php echo $allVille['ville'];?>"><?php echo $allVille['ville'];?></option>
                                            <?php }
                                        ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="LineRecherche">
                                <p><?php echo text('Subjects');?></p>
                                <div class="InputRecherche">
                                    <i class="fal fa-search"></i>
                                    <select name="matiere" id="matiere_" class="inputBoxReche">
                                    <?php
                                        foreach(GetMatiereGroupType() as $grouptype){ ?>
                                        <optgroup label="<?php echo strtoupper($grouptype['typematiere']); ?>">
                                        <?php foreach(GetMatiereGroup($grouptype['typematiere']) as $groupmatiere){ ?>
                                            <option value="<?= $groupmatiere['matiere'];?>"><?php echo $groupmatiere['matiere'];?></option>
                                            <?php } ?>
                                        </optgroup>
                                    <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>                    
                    <div class="LineRecherche">
                        <p><?= Text('name_of_prof') ?></p>
                        <div class="InputRecherche">
                            <i class="fal fa-search"></i>
                            <input type="text" value="<?php //if(!empty($_GET['nomprof'])){echo $_GET['nomprof'];} ?>" name="nomprof" class="">
                        </div>
                    </div>
                    <button type="submit" name="btnsubmit" value="se" id="idSearcheBtn" ><?php echo text('search');?></button>
                </form>
            </div>
            <div class="col-10 col-md-9">
                <h4 class="reshersed"><?= $count .' '. Text('results')?></h4>
                <div class="row">
                
                    <?php
                        if(count($fetch) > 0){

                        
                        foreach($fetch as $loop){ 
                            if(IsInfoComplait($loop['id_teacher']) and IsHaveProfile($loop['id_teacher'])){                            
                            ?>
                        <div class="col-12 col-sm-6 col-md-4 mb-3">
                            <div class="TeacherOne1">
                                <a href="teacher?id=<?php echo $loop['id_teacher'];?>">
                                    <!-- <div  style="background-image: url();"></div> -->
                                    <div class="resImag">
                                        <img src="assets/upload/profiles/<?php if(ifProfileValide($loop['id_teacher'])){
                                            echo GetProfileImage($loop['id_teacher']);
                                        }else{
                                            echo 'imagesAno.png';
                                        } ?>" class="imagePublic" alt="">
                                    </div>
                                    <div class="daitatPubl">
                                        <h3 class="titrePubl"><?php echo strtoupper($loop['fullname']) ;?></h3>
                                        <p class="descriptionPublica"><?php echo mb_strimwidth($loop['description'], 0, 50, "...");?></p>
                                        <ul>
                                            <?php
                                                $count = 0;
                                                foreach(GetMatiere($loop['id_teacher']) as $matiere_){
                                                    if($count > 4){break;}?>
                                                    <li><?php echo $matiere_['matiere'];?></li>
                                                <?php $count++;
                                                }
                                            ?>
                                            </ul>
                                        <p class="prixPubli"><?php echo $loop['price'] . ' DH' . ' - ' . $loop['ville'] ;?></p>
                                    </div>
                                    
                                </a>
                                
                            </div>
                        </div>
                            <?php }
                            }
                            }else{ ?>
                                <div class="result0">
                                    <img src="assets\images\material\sorry.png" alt="">
                                    <p><?php echo text('Sorrywedonthaveresults');?></p>
                                </div>
                            <?php }
                    ?>
                    <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item <?php if($page == 1) echo "disabled"; ?>">
                                        <a class="page-link" href="<?= $_SERVER['PHP_SELF'] . '?ville='.$ville. '&matiere='.$matiere. '&nomprof='.$nomprof.'&page='. ($page -1) ?>"><?= Text("previous")?></a>
                                    </li>

                                    <?php
                                    for($i = 1 ; $i <= $pagesNum; $i++){
                                        if($i <= 10 OR $i == $pagesNum){
                                    ?>
                                    <li class="page-item" >
                                        <a class="page-link" href="<?= $_SERVER['PHP_SELF'] . '?ville='.$ville. '&matiere='.$matiere. '&nomprof='.$nomprof.'&page='. $i;?>"><?php if($i == $pagesNum){echo "+".$i;}else{echo $i;} ?></a>
                                    </li>
                                    <?php }
                                    }?>
                                    
                                    <li class="page-item">
                                        <a class="page-link" href="<?= $_SERVER['PHP_SELF'] . '?ville='.$ville. '&matiere='.$matiere. '&nomprof='.$nomprof.'&page='. ($page +1) ?>"><?= Text("next")?></a>
                                    </li>
                                </ul>
                            </nav>
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
</body>
</html>