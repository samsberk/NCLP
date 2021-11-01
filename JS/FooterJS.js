$(".go-top").click(function () {
    window.scrollTo(0, 0);
});
$(window).scroll(function () {
    var t = $(window).scrollTop();
    if (t > 20)
        $(".go-top").show();
    else if (t < 20)
        $(".go-top").hide();
});

$(".click-on").click(function () {
    $(".after-click").fadeIn();
});
var loader = document.getElementById("loader");
window.addEventListener("load", function () {
    $("#loader").fadeOut("slow");
});
var loader = document.getElementById("loader");
window.addEventListener("load", function () {
    loader.style.display = "none";
});