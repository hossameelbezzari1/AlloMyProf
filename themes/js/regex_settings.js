var mobile2 = document.getElementById("mobile2");
mobile2.oninput = RegexMobile2;
function RegexMobile2(){
    
    var valide = false;

    mobile2.style.border = "1px solid #b1b1b1";
    if(mobile2.value == ""){
        valide = true;
    }else if(/^\+212(7|6|5)\d{8,14}$/.test(mobile2.value)){
        valide = true;
    }else{
        mobile2.style.border = "1px solid red";
        valide = false;
    }
    return valide;
}