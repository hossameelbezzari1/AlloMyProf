<?php

    function GetTeacherId(){
        return $_COOKIE['id_teacher'];
    }

    function GetTeacher($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT t.id_teacher as id_teacher , t.email as email , c.id_country as id_country , i.fullname as fullname , i.description as description , i.price as price , i.tel as tel , v.ville as ville , v.id_ville as id_ville , c.src as src  FROM teacher t , infoteacher i , ville v , country c WHERE t.id_teacher = i.id_teacher and v.id_ville = t.id_ville AND c.id_country = t.id_country and t.id_teacher = '$id'");
        $select->execute();
        return $select->fetch();
    }
    function GetTeacherWithName($nomprof){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM teacher t , infoteacher i , ville v , teachermatier m ,matiere ma WHERE t.id_teacher = i.id_teacher AND t.id_ville = v.id_ville AND m.id_teacher = t.id_teacher AND m.id_matiere = ma.id_matiere AND fullname like '%$nomprof%' GROUP BY fullname");
        $select->execute();
        return $select->fetchAll();
    }
    function GetTeacherWithVilleAndMatiere($ville, $matiere){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM teacher t , infoteacher i , ville v , teachermatier m ,matiere ma WHERE t.id_teacher = i.id_teacher AND t.id_ville = v.id_ville AND m.id_teacher = t.id_teacher AND m.id_matiere = ma.id_matiere AND v.ville = '$ville' AND ma.matiere = '$matiere'");
        $select->execute();
        return $select->fetchAll();
    }
    function GetAllTeacher(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM teacher t , infoteacher i , ville v , teachermatier m WHERE t.id_teacher = i.id_teacher AND t.id_ville = v.id_ville AND m.id_teacher = t.id_teacher GROUP BY t.id_teacher LIMIT 40");
        $select->execute();
        return $select->fetchAll();
    }
    function GetOneTeacher($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT *  FROM teacher WHERE id_teacher = '$id'");
        $select->execute();
        return $select->fetch();
    }
    function GetInfoTeacher($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM infoteacher WHERE id_teacher = '$id'");
        $select->execute();
        return $select->fetch();
    }

    function GetAccountTeacher(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM teacher");
        $select->execute();
        return $select->fetchAll();
    }

    function CheckIsInfoComplaite($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM `infoteacher` WHERE id_teacher = '$id'");
        $select->execute();
        $c = 0;
        if($select->rowCount() > 0){
            $c++;
        }
        $select = $database->prepare("SELECT * FROM `profile` WHERE id_teacher = '$id'");
        $select->execute();
        if($select->rowCount() > 0){
            $c++;
        }
        if($c == 2){
            return true;
        }else{
            return false;
        }        
    }

    function CheckIsTeacher($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM `teacher` WHERE id_teacher = '$id'");
        $select->execute();
        if($select->rowCount() > 0){
            return true;
        }else{
            return false;
        }
    }

    function GetMatiere($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM teachermatier t , matiere m WHERE m.id_matiere = t.id_matiere AND t.id_teacher = '$id'");
        $select->execute();
        return $select->fetchAll();
    }

    function GetVideo($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM video WHERE id_teacher = '$id'");
        $select->execute();
        return $select->fetch();
    }
    function GetImages($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM image WHERE id_teacher = '$id'");
        $select->execute();
        return $select->fetchAll();
    }
    
    function SuggestTeacher($id , $notMe){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM teacher t , infoteacher i , ville v , profile p WHERE t.id_teacher = i.id_teacher AND t.id_ville = v.id_ville AND p.id_teacher = t.id_teacher AND t.id_teacher != '$notMe' AND v.id_ville = '$id' GROUP BY t.id_teacher");
        $select->execute();
        return $select->fetchAll();
    }

    function GetComments($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM comments where id_teacher = '$id'");
        $select->execute();
        return $select->fetchAll();
    }

    function CreateComment($id , $comment , $replied){
        include 'configure/database.php';
        $select = $database->prepare("INSERT INTO `comments` (`id_comment`, `id_teacher`, `comments`, `replied`) VALUES (NULL, '$id', '$comment', '$replied')");
        $select->execute();
    }

    function GetAllVille(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM `ville`");
        $select->execute();
        return $select->fetchAll();
    }
    
    // function GetVilleTeacher($id){
    //     include 'configure/database.php';
    //     $select = $database->prepare("SELECT * FROM ville WHERE id_teacher = '$id'");
    //     $select->execute();
    //     if($select->rowCount() > 0){
    //         return $select->fetch();
    //     }
        
    // }

    function GetAllCountry(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM `country`");
        $select->execute();
        return $select->fetchAll();
    }

    function GetAllMatiere(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM `matiere`");
        $select->execute();
        return $select->fetchAll();
    }

    function GetVilleParCount(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT COUNT(ville) as count , ville , t.* , v.* FROM teacher t ,ville v WHERE t.id_ville = v.id_ville GROUP BY ville");
        $select->execute();
        return $select->fetchAll();
    }
    
    function GetTopTeacher(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT count(*) as count , t.* , c.* , p.* FROM infoteacher t , contacterwhatsapp c , profile p WHERE t.id_teacher = c.id_teacher AND p.id_teacher = t.id_teacher GROUP BY t.id_teacher ORDER BY count DESC");
        $select->execute();
        return $select->fetchAll();
    }
    function GetMatiereGroup($type){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * from matiere WHERE typematiere = '$type' ORDER BY matiere");
        $select->execute();
        return $select->fetchAll();
    }

    function GetMatiereGroupType(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * from matiere GROUP BY typematiere DESC");
        $select->execute();
        return $select->fetchAll();
    }
    function IsInMatiere($teacher , $matiere){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM teachermatier WHERE id_matiere = '$matiere' AND id_teacher = '$teacher'");
        $select->execute();
        if($select->rowCount() > 0){
            return true;
        }else{
            return false;
        }
    }
    
    function TopTeacher(){
        include 'configure/database.php';
        // $select = $database->prepare("SELECT COUNT(*) as count , c.*  FROM contacterwhatsapp c GROUP BY id_teacher ORDER BY count DESC LIMIT 1");
        $select = $database->prepare("SELECT COUNT(*) as count , c.*  FROM contacterwhatsapp c GROUP BY id_teacher ORDER BY count DESC");
        $select->execute();
        return $select->fetchAll();
    }
?>