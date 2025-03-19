function get(id){
    return document.getElementById(id);
}
DisablelSubmit();

get("prenom").oninput = get("nom").oninput = get("email").oninput = get("password").oninput = get("repassword").oninput= get("adress").oninput= get("telephone").oninput= get("ville").oninput = get("country").onchange = FormSignUpValide;


function ActiverSubmit(){
    get("btnSubmit").disabled = false ;
    get("btnSubmit").style.backgroundColor = "#51bfff";
}

function DisablelSubmit(){
    get("btnSubmit").disabled = true;
    get("btnSubmit").style.backgroundColor = "#ff515178";
}

function FormSignUpValide(){

    var valide = true;

    if(!/^[a-zA-Z]{3,13}$/.test(get("prenom").value) || get("prenom").value == ""){
        get("error_prenom").innerText = "write your realy ferst name";
        get("prenom").style.backgroundColor = "#fad7d7";
        valide = false;
    }else{
        get("error_prenom").innerText = "";
        get("prenom").style.backgroundColor = "#fff ";
        valide= true;
    }

    if(!/^[a-zA-Z]{3,13}$/.test(get("nom").value) || get("nom").value == ""){
        get("error_nom").innerText = "write your realy last name";
        get("nom").style.backgroundColor = "#fad7d7";
        valide = false;
    }else{
        get("error_nom").innerText = "";
        get("nom").style.backgroundColor = "#fff ";
        valide= true;
    }

    if(!/^[a-zA-Z_0123456789\.]{3,20}@\w{3,10}\.\w{2,7}$/.test(get("email").value) || get("email").value == ""){
        get("error_email").innerText = "write your realy email";
        get("email").style.backgroundColor = "#fad7d7";
        valide = false;
    }else{
        get("error_email").innerText = "";
        get("email").style.backgroundColor = "#fff ";
        valide= true;
    }

    if(!/^[a-zA-Z_0123456789\.]{8,20}$/.test(get("password").value) || get("password").value == ""){
        get("error_password").innerText = "the password is not strong. you must be from 8 and above";
        get("password").style.backgroundColor = "#fad7d7";
        valide = false;
    }else{
        get("error_password").innerText = "";
        get("password").style.backgroundColor = "#fff ";
        valide= true;
    }

    if(get("password").value != get("repassword").value){
        get("error_repassword").innerText = "password check does not match";
        get("repassword").style.backgroundColor = "#fad7d7";
        valide = false;
    }else{
        get("error_repassword").innerText = "";
        get("repassword").style.backgroundColor = "#fff ";
        valide= true;
        
    }

    if(!/^[a-zA-Z_\s0123456789\.]{3,50}$/.test(get("adress").value) || get("adress").value == ""){
        get("error_adress").innerText = "your residence adress is required";
        get("adress").style.backgroundColor = "#fad7d7";
        valide = false;
    }else{
        get("error_adress").innerText = "";
        get("adress").style.backgroundColor = "#fff ";
        valide= true;
    }

    if(!/^(\+|)\d{9,14}$/.test(get("telephone").value) || get("telephone").value == ""){
        get("error_telephone").innerText = "write number mobile";
        get("telephone").style.backgroundColor = "#fad7d7";
        valide = false;
    }else{
        get("error_telephone").innerText = "";
        get("telephone").style.backgroundColor = "#fff ";
        valide= true;
    }

    if(!/^[a-zA-Z_\s\.]{3,30}$/.test(get("ville").value) || get("ville").value == ""){
        get("error_ville").innerText = "is not city";
        get("ville").style.backgroundColor = "#fad7d7";
        valide = false;
    }else{
        get("error_ville").innerText = "";
        get("ville").style.backgroundColor = "#fff ";
        valide= true;
    }

    if(get("country").value == ""){
        get("error_country").innerText = "please select country";
        get("country").style.backgroundColor = "#fad7d7";
        valide = false;
    }else{
        get("error_country").innerText = "";
        get("country").style.backgroundColor = "#fff ";
        valide= true;
    }
    if(valide){
        ActiverSubmit();
    }else{
        DisablelSubmit();
    }

}