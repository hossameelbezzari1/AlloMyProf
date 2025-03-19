var TempsRange = document.getElementById("TempsRange");
var CounterDay = document.getElementById("CounterDay");


SetToSpan();

function SetToSpan(){
    CounterDay.innerText =  TempsRange.value;
}

TempsRange.onchange = function(){
    SetToSpan();
    SetViewPrice();
}

var cardVisa = document.getElementById("cardVisa"),
cash =  document.getElementById("cash"),
paypal =  document.getElementById("paypal");

var BoxPaymentCard = document.getElementById("BoxPaymentCard"),
BoxPaymentPaypal =  document.getElementById("BoxPaymentPaypal"),
BoxPaymentCash =  document.getElementById("BoxPaymentCash");

ShowPaymentCard();

cardVisa.onclick = ShowPaymentCard;
cash.onclick = ShowPaymentCash;
paypal.onclick = ShowPaymentPaypal;

function ShowPaymentCard(){
    BoxPaymentCard.style.display = "block";
    BoxPaymentPaypal.style.display = "none";
    BoxPaymentCash.style.display = "none";
}

function ShowPaymentPaypal(){
    BoxPaymentCard.style.display = "none";
    BoxPaymentPaypal.style.display = "block";
    BoxPaymentCash.style.display = "none";
}
function ShowPaymentCash(){
    BoxPaymentCard.style.display = "none";
    BoxPaymentPaypal.style.display = "none";
    BoxPaymentCash.style.display = "block";
}
SetViewPrice()
function SetViewPrice(){
    document.getElementById("Total").innerText = Price * TempsRange.value;
}