// JavaScript source code


//opening Table
function openTable(event, tabName) {
    var i,tabcontent, btlinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0;i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    btlinks = document.getElementsByClassName("btlinks");
    for (i = 0;i < btlinks.length; i++) {
        btlinks[i].className = btlinks[i].className.replace("active", "");
    }
    document.getElementById(tabName).style.display ="block";
    evt.currentTarget.className +="active";
}



$(document).ready(function opentable(event, tabName) {
    alert("updated");
    $(function () { $(".divResize").draggable().resizable(); });
    $("#makeitmove").draggable({ containment: "#img", scroll: true });
});


//for text on label
window.onload = function () {
    

    //for text
    var x = document.getElementById("txt_text");
    if (x.addEventListener) {     // For all major browsers, except IE 8 and earlier
        x.addEventListener("change", onTextChanged);
    } else if (x.attachEvent) {   // For IE 8 and earlier versions
        x.attachEvent("onchange", onTextChanged);
    }

    function onTextChanged() {
        var text = this.value;
        var element = document.getElementById('makeitmove1');
        element.innerHTML = text;
       // element.style.width = "auto";
        element.style.display = "inline-block";

    }

    //for color
    var x = document.getElementById("txt_color");
    if (x.addEventListener) {     // For all major browsers, except IE 8 and earlier
        x.addEventListener("change", onColorChanged);
    } else if (x.attachEvent) {   // For IE 8 and earlier versions
        x.attachEvent("onchange", onColorChanged);
    }

    function onColorChanged() {
        var color = this.value;
        document.getElementById('makeitmove1').style.color = color;
    }

    //for text size
    var x = document.getElementById("txt_size");
    if (x.addEventListener) {     // For all major browsers, except IE 8 and earlier
        x.addEventListener("change", onSizeChanged);
    } else if (x.attachEvent) {   // For IE 8 and earlier versions
        x.attachEvent("onchange", onSizeChanged);
    }

    function onSizeChanged() {
        var size = this.value;
        document.getElementById('makeitmove1').style.fontSize = size+"px";
    }
}


//for chose file dialog
function showDiv() {
    //alert("show Div method");
    document.getElementById("st_bg_img_browse").style.display = "block";
}

//for showing dragable div on click
function showLabel() {
    //alert("show label method");
    document.getElementById("makeitmove").style.display = "inline-block";
}


