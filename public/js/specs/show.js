$(document).ready(function(){
    $('.spec_lnk_del').click(function () {
        $me = $(this);
        var okk = areyousure();
        if (okk === true) {
            var request = $.ajax({
                url: base_url + 'spec/ajax_delete',
                method: 'POST',
                data: 'id=' + $me.attr('id')
            });
            request.done(function (response) {
                alert("Deleted successfully!");
                $me.parent().parent().hide(1500, "linear");
            });
            request.fail(function (error) {
                alert("Somethings wrong :( -- " + error.status + ' ' + error.statusText);
            });
        }
        return false;
    });
})