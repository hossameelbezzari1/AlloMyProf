<?php
    function GetClickBord($id){
        include 'configure/database.php';
        $select = $database->prepare("SELECT COUNT(*) as count, contacterwhatsapp.* FROM contacterwhatsapp WHERE id_teacher = '$id' GROUP BY date ORDER BY date limit 30");
        $select->execute();
        return $select->fetchAll();
    }
    function GetCountAccount(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM teacher");
        $select->execute();
        return $select->rowCount();
    }

    function CountAccountComplait(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM teacher t , infoteacher i , ville v , country c , profile p WHERE t.id_teacher = i.id_teacher and t.id_ville = v.id_ville and t.id_country = c.id_country and p.id_teacher = t.id_teacher GROUP BY t.id_teacher");
        $select->execute();
        return $select->rowCount();
    }

    function CountContacterWhatsapp(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT * FROM `contacterwhatsapp`");
        $select->execute();
        return $select->rowCount();
    }
    
    function ListTeacherForDay(){
        include 'configure/database.php';
        $select = $database->prepare("SELECT COUNT(*) as count , date as date FROM teacher GROUP BY date ORDER BY date DESC");
        $select->execute();
        return $select->fetchAll();
    }
    function Start($id) {
        // // ( account_Count * 5 ) / total_account
        include 'configure/database.php';
        // SELECT COUNT(*) as count  , i.id_teacher as teacher , i.fullname as fullname FROM contacterwhatsapp c , teacher t , infoteacher i WHERE c.id_teacher = t.id_teacher AND i.id_teacher = t.id_teacher AND i.id_teacher = $id GROUP BY i.id_teacher ORDER BY COUNT(*) DESC
        $account_Count = $database->prepare("Select 0 as count, fullname from teacher t join infoteacher i on t.id_teacher = i.id_teacher where t.id_teacher = '$id' AND t.id_teacher not in (select tt.id_teacher from contacterwhatsapp tt) union (select count(*), info.fullname from teacher ttt join infoteacher info on info.id_teacher = ttt.id_teacher join contacterwhatsapp ct on ct.id_teacher = info.id_teacher where ttt.id_teacher = '$id'  group by info.id_teacher, info.fullname)");
        $account_Count->execute();

        // if($account_Count->rowCount() > 0){
            $count = $account_Count->fetch()['count'];
        // }else{
        //     $count = 1;
        // }
        $max_account = $database->prepare("SELECT count(*) as count FROM contacterwhatsapp c , teacher t , infoteacher i WHERE c.id_teacher = t.id_teacher AND i.id_teacher = t.id_teacher GROUP BY i.id_teacher");
        $max_account->execute();
        
        $list = array();
        foreach($max_account->fetchAll() as $loop ){
            array_push($list, $loop['count']);
        }
        $max = max(array_values($list));
        
                
        return round(( $count * 5 ) / $max) ;

        // return $count;
    }
?>