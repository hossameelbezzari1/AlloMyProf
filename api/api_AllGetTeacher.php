<?php

    include_once "../class/class/Teacher.php";

    header('Access-Control-Allow-Origin: *');
    header('Content-type: application/json; charset=utf-8');

    $teacher = new Teacher();

    if(count($teacher->GetAllTeachers()) > 0){

        echo json_encode(array("server" => "success","code" => "200","result"=>$teacher->GetAllTeachers()),JSON_UNESCAPED_UNICODE);
    }else{
        echo json_encode(array("server" => "failed","code" => "200","result"=>null),JSON_UNESCAPED_UNICODE);

    }


    


?>