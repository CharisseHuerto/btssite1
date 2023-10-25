function facture()
{
    var a =document.getElementById("A").value;
    var b =document.getElementById("B").value;
    var c = Number(a)*Number(b);
    r1.value=(c)
 
 
    var d =document.getElementById("C").value;
    var e =document.getElementById("D").value;
    var f = Number(d)*Number(e);
    r2.value=(f)
 
 
    var g =document.getElementById("E").value;
    var h =document.getElementById("F").value;
    var i = Number(g)*Number(h);
    r3.value=(i)
 
 
    var j = Number(c)+Number(f)+Number(i);
    r4.value=(j)
}
 
function reinitialiser(){
    window.location.reload();
}
 