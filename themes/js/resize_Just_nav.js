function get(id){
    return document.getElementById(id);
}

resize_nav_two();

window.onresize = function(){
    resize_nav_two();
}


function resize_nav_two(){
    var linkOffers = document.getElementById("menuC")
    var nav_Picer = document.getElementById("nav_Picer");
    // ville = document.getElementById("ville"),
    // BoxRecherche = document.getElementById("BoxRecherche"),
    // matiere = document.getElementById("matiere");

    
    if(window.innerWidth > 1000){
        linkOffers.style.display = "flex";
        nav_Picer.style.display = "none";
        // BoxRecherche.style.display = "flex";
        // ville.style.margin = "0 10px 0px 0px";
        // matiere.style.margin = "0 10px 0px 0px";
        // get("p1").style.width = "26%";
        // get("p2").style.width = "26%";
        // get("p3").style.width = "26%";
        

    }else{
        linkOffers.style.display = "none";
        nav_Picer.style.display = "flex";
        // BoxRecherche.style.display = "grid";
        // ville.style.margin = "0px 0px 10px 0px";
        // matiere.style.margin = "0px 0px 10px 0px";
        // get("p1").style.width = "40%";
        // get("p2").style.width = "40%";
        // get("p3").style.width = "40%";
    }

}