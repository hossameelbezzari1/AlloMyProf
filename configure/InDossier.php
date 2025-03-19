<?php
    function Direction(){
        // $_SERVER['HTTP_HOST'] . '/'. basename(__DIR__) . '<br>';
        $loop = array();
        for($i = 0; $i< count(explode('/',basename(__DIR__))) ; $i++){
            array_push($loop , "../");
        }
        return implode('',$loop);
    }

    ini_set('display_errors','on');
    
    include 'database.php';
    include Direction().'class/function/Account.php';
    include Direction().'class/function/Device.php';
    include Direction().'class/function/Location.php';
    include Direction().'class/function/Public.php';
    include Direction().'class/function/Friends.php';
    include Direction().'class/function/Channel.php';
    include Direction().'class/function/Video.php';
    include Direction().'class/function/Permission.php';
    include Direction().'class/function/BlockUser.php';
    include Direction().'class/function/Accessibility.php';
    include Direction().'class/function/Chat.php';
?>