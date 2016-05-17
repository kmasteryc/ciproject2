$(document).ready(function () {
    $(".product_summary").hide();
    $(".product_box").hover(function () {
        $(this).find(".product_img").css({"opacity": "0.2"});
        $(this).find(".product_summary").css({"display": "block", "opacity": "1"});

    }, function () {
        $(this).find(".product_img").css({"opacity": "1"});
        $(this).find(".product_summary").css({"display": "none"});
    })
});