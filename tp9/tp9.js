function seconnecter(){
    var login = prompt("Donner votre nom d'utilisateur");
    var password = prompt("Enter votre mot de passe");
    if (login == "admin" && password == "admin"){
        document.write("Bienvenue : " + login);
    }
    else{
        alert("Accès refusé");
    }
}

function seconnecter2(){
    window.location.href='identification.html'
}

function affichagetab(){
    document.write('<table border=2px width=30%');
    for(var i = 0; i<=5; i++){
        document.write('<tr><td>*</td><td>*</td><td>*</td></tr>')
    }
    document.write('</table>');
}

function affichagetab2(){

    var count  = prompt("Entrez le nombre de lignes pour votre tableau")

    document.write('<table border=2px width=30%');
    for(var i = 1; i<= count; i++){
        document.write('<tr><td>*</td><td>*</td><td>*</td></tr>')
    }
    document.write('</table>');
}

function cdc(){
    var chaine = prompt("Donner un mot");
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toLowerCase()+"<br>");
    document.write("La chaîne contient " + chaine.length + " caractères" + "<br>");
    document.write("La première lettre est " + chaine.substr(0,1) + "<br>");
    document.write("La dernière lettre est " + chaine.substr(chaine.length-1,1) + "<br>");
}

function swich(){
    var color = prompt("Entrez une couleur :");
    switch (color){
        case "rouge":
            document.body.style.background ="red";
            break;
        case "ROUGE":
            document.body.style.background ="red";
            break;

        case "bleu":
            document.body.style.background ="blue";
            break;
        case "BLEU":
            document.body.style.background ="blue";
            break;

        default:
            alert("Couleur non prise en charge, veuillez choisir parmis : bleu, rouge");
    }
}

function seconnecter3(){
    var i = 0;
    do{
        var id = prompt("Entrez votre nom d'utilisateur");
        var mdp = prompt("Entrez votre mot de passe");
        if (id == "admin" && mdp == "admin")
        {
            document.write("Bienvenue " + id);
            break;
        }
        else
        alert("Accès refusé");
    i=i+1;
    }while (i<3);
    
    if (i==3)
    alert("Délai dépassé");
}

function ligne(){
    window.location.href='ligne.html'
}
function bonus(){
    window.location.href='bonus.html'
}