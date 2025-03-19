<?php
    session_start();
    include '../../configure/database.php';

    $ville = filter_var($_POST['ville'],FILTER_SANITIZE_STRING);
    // $datedepart = filter_var($_POST['datedepart'],FILTER_SANITIZE_STRING);
    // $datefinnal = filter_var($_POST['datefinnal'],FILTER_SANITIZE_STRING);

    $time = date("H:i");
    $date = date("l M , d Y");

    $select = $database->prepare("SELECT * FROM publication p , ville v ,image_publication i WHERE v.ville_id = p.id_ville and nom_ville like '%$ville%' GROUP BY p.publication_id");
    $select->execute();
    $fetch = $select->fetchAll();
    $count = $select->rowCount();

    // echo '<pre>';
    //                 print_r($fetch);
    //                 echo '<pre>';
    ?>
    <h3>We have <?php echo $count;?> results</h3>
    <?php foreach($fetch as $loopPublication){ ?>
        
        <a href="itemPublication?id=<?php echo $loopPublication['publication_id'];?>" class="ElementPublication">
            <div class="imagePublic" style="background-image: url(assets/images/upload/reservation/<?php echo $loopPublication['src'];?>);"></div>
            <div class="daitatPubl">
                <h2 class="titrePubl"><?php echo $loopPublication['titre'];?> <div class="start"><i class="fas fa-star"></i> 4.7</div></h2>
                <p class="descriptionPublica"><?php echo mb_strimwidth($loopPublication['description'], 0, 100, "...");?></p>
                <p class="CountRoomPeoplePubl"><?php echo $loopPublication['max_personne'] . ' people ● ' . $loopPublication['nbrRooms'].' rooms';?></p>
                <p class="prixPubli"><?php echo $loopPublication['prix'] . ' DH';?></p>
            </div>
        </a>
    <?php }
        
?>