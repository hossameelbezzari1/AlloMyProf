<?php
    function Country(){
        return json_decode(file_get_contents('api/country.json'), true);
    }
?>