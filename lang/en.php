<?php
    function text($key){
        $lang = array(
            "lang" => "English",
            
            // login
            "logout" => "Log out",

            // signup
            "passwordnotequal" => "Password is not worth",

            // configuration info
            "Youmustfillinyourinformation" => "You must fill in your information completely in order to complete your account data and show it in search engines",
            "Youmustputyourpersonalphototocompleteyouraccount" => "You must put your personal photo to complete your account",


            // nav
            "search" => "Search",
            "mypost" => "My Post",
            "getteacher" => "Get Teacher",
            "settings" => "Settings",
            // page home
            "title_home" => "Get your teacher for free",
            "header1" => "Are you a student or professor ?",
            "header2" => "if you are a student and you are looking for a professor or you are a professor or someone with experience in teaching a specific experience. We will help you find a teacher or students for you for free",
            "header3" => "The best professors you will find here and for free",
            "header_3" => "The site provides you with free services where the professor approaches you and gives you the information of a specific professor according to what you want",
            "geteacher" => "Get teacher",
            "topteacher" => "Top teacher",
            "teacherforville" => "Teacher For Ville",
            "properties" => "properties",
            
            
            // page recherche
            "Sorrywedonthaveresults" => "Sorry we don't have results",
            "city" => "City"
        );
        return $lang[$key];
    }
?>