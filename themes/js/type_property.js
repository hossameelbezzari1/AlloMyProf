var btnLeft = document.getElementById("btnLeft"),
    btnRight = document.getElementById("btnRight");

var LoopTypeProperty = document.getElementById("LoopTypeProperty");

VerfierShowHideLeftRight();

function VerfierShowHideLeftRight(){
    
    if(LoopTypeProperty.scrollLeft == LoopTypeProperty.offsetWidth - LoopTypeProperty .clientWidth){
        HideBtnLeft();   
    }else{
        ShowBtnLeft(); 
    }
    if(LoopTypeProperty.scrollLeft == 0){
        HideBtnRight(); 
    }else{
        ShowBtnRight();
    }

    // if(clicked_==1){
    //     ShowBtnRight();
    // }else{
    //     HideBtnRight();
    // }
    console.log(LoopTypeProperty.scrollLeft);
    console.log(LoopTypeProperty.offsetWidth - LoopTypeProperty.clientWidth);
}



function ScrollBtnLeft(){
    LoopTypeProperty.scrollLeft -=120;
}

function ScrollBtnRight(){
    LoopTypeProperty.scrollLeft += 120;
}

function HideBtnLeft(){
    btnLeft.style.display = "none";
}

function ShowBtnLeft(){
    btnLeft.style.display = "block";
}

function HideBtnRight(){
    btnLeft.style.display = "none";
}

function ShowBtnRight(){
    btnLeft.style.display = "block";
}

btnRight.onclick = function(){
    ScrollBtnRight();
}

btnLeft.onclick = function(){
    ScrollBtnLeft();
}
LoopTypeProperty.onscroll = function(){
    VerfierShowHideLeftRight();
}