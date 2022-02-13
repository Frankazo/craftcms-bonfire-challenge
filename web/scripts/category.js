var nav = document.getElementById('btns');
var btn = nav.getElementsByClassName('btn');
var current = window.location.href.split('/');

if (current[3] == "") {
    btn[0].className = "btn-active";
} else {
    for (var i = 0; i < btn.length; i++) {
        if (btn[i].outerText == current[4].toUpperCase()) {
                btn[i].className = "btn-active";

        }
    }
}