$(document).ready(function(){
    if ($(".datepicker").length) {
        $(".datepicker").datepicker({
            dateFormat: "yy-mm-dd",
            firstDay: 1
        });
    };
    $("#product_btn_detailpopup").click(function () {
        var child = window.open(base_url + "spec/popup_choose", "myWindow", "width=500,height=300");
    });
})
