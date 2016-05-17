//    ******************  JS FOR VENDOR CONTROLLER ******************
$(document).ready(function () {
    $('.vendor_lnk_del').click(function () {
        $meee = $(this);
        var okk = areyousure();
        if (okk === true) {
            var request = $.ajax({
                url: base_url + 'vendor/ajax_delete',
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
        return false;
    });
})
//    ******************  JS FOR PRODUCT CONTROLLER ******************/**
