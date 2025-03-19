<?php
    if(!empty($_COOKIE['id_teacher'])){
        if(!IsInfoComplait($_COOKIE['id_teacher'])){
            echo '<div class="col-12 mt-3 mb-3">
                <div class="alert alert-danger" role="alert">'. text('Youmustfillinyourinformation').'</div>
            </div>';
        }elseif(!IsHaveProfile($_COOKIE['id_teacher'])){
            echo '<div class="col-12 mt-3 mb-3">
                <div class="alert alert-danger" role="alert">'.text('Youmustputyourpersonalphototocompleteyouraccount').'</div>
            </div>';
        } 
    }
               
?>