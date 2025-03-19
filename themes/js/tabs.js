function TabsChange(evt, cityName) {
    var i, tabcontent, elementOfMenu;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    elementOfMenu = document.getElementsByClassName("elementOfMenu");
    for (i = 0; i < elementOfMenu.length; i++) {
        elementOfMenu[i].className = elementOfMenu[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();