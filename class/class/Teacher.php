<?php
    // include_once('../../configure/DatabaseApi.php');
    include_once('../configure/DatabaseApi.php');
    
    class Teacher extends Database{

        public function __construct(){

            parent::__construct();
        }

        public function GetAllTeachers(){
            $select = $this->connection-> prepare("SELECT fullname , t.id_teacher, v.ville , i.description , i.tel , v.src, p.src  FROM teacher t , infoteacher i , ville v , teachermatier m , profile p WHERE t.id_teacher = i.id_teacher AND t.id_ville = v.id_ville AND m.id_teacher = t.id_teacher AND t.id_teacher = p.id_teacher GROUP BY t.id_teacher DESC

            ");
            $select->execute();
            return $select->fetchAll();
        }
        
        // public function GetUser($id){
        //     $select = $this->connection->prepare("select * from users where user_id = $id");
        //     $select->execute();
        //     return $select->fetch();
        // }
        // public function Login($phone, $password){
        //     $select = $this->connection->prepare("select * from users where phone = '$phone' and password = '$password'");
        //     $select->execute();
        //     if($select->rowCount() > 0){
        //         return $select->fetch();
        //     }else{
        //         return null;
        //     }
        // }

        
        // public function _AddUser($token ,$username,$phone,$password,$note= "user",$active){
        //     $token = new Methods();
        //     $insert = $this->connection->prepare("INSERT INTO `users` (`user_id`, `username`, `phone`, `token`, `password`, `date`, `active`, `lastdate`, `note`) VALUES (NULL, '$username', '$phone', '{$token->Token(50)}', '$password', current_timestamp(), '$active', current_timestamp(), '$note')");
        //     if($insert->execute()){
        //         return true;
        //     }else{
        //         return false;
        //     }
        // }
        // public function AddUser($token,$username,$phone,$password,$note= "user",$active){
            
        //     $select = $this->connection->prepare("SELECT * FROM users WHERE token = '$token'");
        //     $select->execute();
        //     if($select->rowCount() > 0){
        //         if($this->_AddUser($token,$username,$phone,$password,$note= "user",$active)){
        //             return true;
        //         }else{
        //             return false;
        //         }
        //     }else{
        //         return false;
        //     }
        // }

        // public function UpdateUser($user_id,$username,$phone,$password, $date,$active,$lastdate,$level){
        //     $token = new Methods();
        //     $update = $this->connection->prepare("UPDATE `users` SET `username` = $username, `phone` = '$phone', `token` = '{$token->Token(50)}', `password` = '$password', `date` = '$date', `active` = '$active', `lastdate` = '$lastdate', `note` = '$level' WHERE user_id = $user_id");
        //     $update->execute();
        // }

        // public function DeleteUser($user_id){
        //     $delete = $this->connection->prepare("DELETE FROM users WHERE user_id = $user_id");
        //     $delete->execute();
        // }
    }

?>