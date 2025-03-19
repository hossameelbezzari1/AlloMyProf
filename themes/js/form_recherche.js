
CrupToHeightRecherche();
resizeRecherche();
ShowHideControl();
function CrupToHeightRecherche(){
    var HeightBoxRecherche = (boxRecherche.offsetHeight-10).toString()+"px";
    // document.getElementById("BigBoxRecher").style.height = HeightBoxRecherche;
    // document.getElementById("BigBoxRecher").style.marginBottom = "180px";
    console.log(BigBoxRecher.offsetHeight);
}

function resizeRecherche(){
    var boxRecherche = document.getElementById("boxRecherche"),
        InputMargeRecherche = document.getElementById("InputMargeRecherche");
    if(window.innerWidth > 1000){
        //boxRecherche.style.margin = "0 15%";
        //boxRecherche.style.display = "flex";
        InputMargeRecherche.style.marginRight = "10px";

    }else{
        //console.log("no actived");
        boxRecherche.style.margin = "";
        //boxRecherche.style.display = "block";
        InputMargeRecherche.style.marginRight = "0px";
    }
}

document.getElementById("countPerson").onclick = function(){
    ShowHideControl();
    CrupToHeightRecherche();
}

function ShowHideControl(){
    var boxEditeCountRecher = document.getElementById("boxEditeCountRecher");
    
    if(boxEditeCountRecher.style.display === "none"){
        boxEditeCountRecher.style.display = "block";
    }else{
        boxEditeCountRecher.style.display = "none";
    }
}
var people = 2
    rooms = 1;

var removePeople = document.getElementById("removePeople"),
    addPeople = document.getElementById("addPeople");

var removeRooms = document.getElementById("removeRooms"),
    addRooms = document.getElementById("addRooms");

removePeople.onclick = function(){
    RemovePeople();
    AfficherCalcule();
}
addPeople.onclick = function(){
    AddPeople();
    AfficherCalcule();
}

removeRooms.onclick = function(){
    RemoveRooms();
    AfficherCalcule();
}
addRooms.onclick = function(){
    AddRooms();
    AfficherCalcule();
}

AfficherCalcule();


function AddPeople(){
    people++;
}

function RemovePeople(){
    if(people > 1){
        people--;
    }
}

function AddRooms(){
    rooms++;
}

function RemoveRooms(){
    if(rooms > 1){
        rooms--;
    }
}

function AfficherCalcule(){
    
    var countPeople = document.getElementById("countPeople"),
        countRooms = document.getElementById("countRooms"),
        countPeople_ = document.getElementById("countPeople_"),
        countRooms_ = document.getElementById("countRooms_");
    countPeople.innerHTML = people;
    countRooms.innerText = rooms;
    countPeople_.innerHTML = people;
    countRooms_.innerText = rooms;
}



//document.getElementById("coun").innerText