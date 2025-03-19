var btnLeftCommandVille = document.getElementById("btnLeftCommandVille"),
    btnRightCommandVille = document.getElementById("btnRightCommandVille");

var LoopCommandVille = document.getElementById("LoopCommandVille");

VerfierShowHideLeftRightCommandVille();

function VerfierShowHideLeftRightCommandVille(){
    
    if(LoopCommandVille.scrollLeft == 0){
        HideBtnLeftCommandVille();   
    }else{
        
        ShowBtnLeftCommandVille(); 
    }
    
    console.log(LoopCommandVille.offsetWidth);

    // if(clicked_==1){
    //     ShowBtnRight();
    // }else{
    //     HideBtnRight();
    // }
    //console.log(LoopTypeProperty.scrollLeft);
}



function ScrollBtnLeftCommandVille(){
    LoopCommandVille.scrollLeft -=120;
}

function ScrollBtnRightCommandVille(){
    LoopCommandVille.scrollLeft += 120;
}

function HideBtnLeftCommandVille(){
    btnLeftCommandVille.style.display = "none";
}

function ShowBtnLeftCommandVille(){
    btnLeftCommandVille.style.display = "block";
}

function HideBtnRightCommandVille(){
    btnLeftCommandVille.style.display = "none";
}

function ShowBtnRightCommandVille(){
    btnLeftCommandVille.style.display = "block";
}

btnRightCommandVille.onclick = function(){
    ScrollBtnRightCommandVille();
}

btnLeftCommandVille.onclick = function(){
    ScrollBtnLeftCommandVille();
}
LoopCommandVille.onscroll = function(){
    VerfierShowHideLeftRightCommandVille();
}