function addition(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a)+Number(b);

    t3.value = c;
}

function soustraction(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a)-Number(b);

    t3.value = c;
}

function division(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a)/Number(b);

    t3.value = c;
}

function multiplication(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a)*Number(b);

    t3.value = c;
}

function parite(){
    // % = modulo = reste d'une division /
    var v;
    v = Number(document.getElementById("t3").value);
    if (v%2==0)
    t4.value = ("Pair")
    else
    t4.value = ("Impair")
}

function permuter(){
    var v3;
    a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    v3 = a;
    a = b;
    b = v3;
    t1.value = a;
    t2.value = b;
}