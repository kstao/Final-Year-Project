$(document).ready(function(){
    $(".navbar-toggler").click(function(e){
        if ($("#navbarNav").hasClass("collapse"))
            $("#navbarNav").removeClass("collapse");
        else
            $("#navbarNav").addClass("collapse");
    })

    $("#logout").click(function(e){
        sessionStorage.clear();
        window.location.href = "index.html";
    });
})