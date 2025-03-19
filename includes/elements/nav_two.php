<nav class="nav_two">
    <a class="logo" href="index">
        <img class="imageLogo" src="assets/images/material/LOGO.png" alt="">
    </a>
    <ul class="menuC" id="menuC">
    <?php if(!empty($_COOKIE['xs'])){
            if(CheckIsInfoComplaite(XsToId()) == true and !empty($_COOKIE['xs']) and !empty($_COOKIE['id_teacher']) ){ ?>
            <li><a href="teacher?id=<?php echo XsToId(); ?>"><i class="fal fa-portrait"></i> <?php echo text('mypost');?></a></li>
        <?php }
            if(CheckIsInfoComplaite(XsToId()) == true ){
                if(ifProfileValide(XsToId())){ ?>
                    <li>
                        <a class="LinProfile" href="user">
                            <div class="Profile">
                                <img src="assets/upload/profiles/<?php echo GetProfileImage(XsToId());?>" class="imgProfile">
                                <p><?php echo strtoupper(GetTeacher(XsToId())['fullname']);?></p>
                            </div>
                        </a
                    ></li>
            <?php }else{ ?>
                    <li><div class="ProfileLetter"><?php echo GetProfileLettre(XsToId());?></div></li>
                <?php }
            }
    }
            
             ?>
        <li><a href="recherche"><i class="fal fa-chalkboard-teacher"></i> <?php echo text('getteacher');?></a></li>
    </ul>
    
    <?php
            if(!empty($_COOKIE['xs']) and !empty($_COOKIE['id_teacher'])){ ?>
                <a  class="btnlogout" href="logout"><?php echo text('logout');?> <i class="fal fa-sign-out"></i></a>
            <?php }else{ ?>
                <ul class="LoginProfi">
                    <li><a class="btnlogin" href="login"><?php echo text('login');?></a></li>
                    <li><a class="btnsingup" href="signup"><?php echo text('signup');?></a></li>
                </ul>
            <?php } ?>
</nav>

<nav class="nav_Picer" id="nav_Picer">
    
    <ul class="menuPicer" id="menuC">
    <?php if(!empty($_COOKIE['xs']) and !empty($_COOKIE['id_teacher'])){
            if(CheckIsInfoComplaite(XsToId()) == true and !empty(XsToId())){ ?>
                <li><a href="teacher?id=<?php echo XsToId(); ?>"><i class="fal fa-portrait"></i> <?php echo text('mypost');?></a></li>
            <?php }
        
        if(CheckIsInfoComplaite(XsToId()) == true ){
                if(ifProfileValide(XsToId())){ ?>
                    <li>
                        <a class="LinProfile" href="user">
                            <div class="Profile">
                                <img src="assets/upload/profiles/<?php echo GetProfileImage(XsToId());?>" class="imgProfile">
                                <p><?php echo mb_strimwidth(strtoupper(GetTeacher(XsToId())['fullname']), 0, 10, "...");?></p>
                            </div>
                        </a
                    ></li>
            <?php }else{ ?>
                    <li><div class="ProfileLetter"><?php echo GetProfileLettre(XsToId());?></div></li>
                <?php }
            }
        }
            ?>
        <li><a href="recherche"><i class="fal fa-chalkboard-teacher"></i> <?php echo text('getteacher');?></a></li>
        
    </ul>
</nav>