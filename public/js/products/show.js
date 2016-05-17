$(document).ready(function(){
    $(".product_lnk_del").click(function () {
        var $meee = $(this);
        var okk = areyousure();
        if (okk === true) {
            var request = $.ajax({
                url: base_url + 'product/ajax_delete',
                method: 'POST',
                data: 'id=' + $meee.attr('id')
            });
            request.done(function (response) {
                alert("Deleted successfully!");
                $meee.parent().parent().hide(1500, "linear");
            });
            request.fail(function (error) {
                alert("Somethings wrong :( -- " + error.status + ' ' + error.statusText);
            });
        }
    });
})