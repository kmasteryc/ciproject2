//    ******************  JS FOR CATE CONTROLLER ******************
$(document).ready(function () {
    $('.cate_lnk_del').click(function () {
        $me = $(this);
        var okk = areyousure();
        if (okk === true) {
            var request = $.ajax({
                url: base_url + 'cate/ajax_delete',
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


    //$('.cate_lnk_edit').click(function () {
    //    var $mee = $(this);
    //
    //    var old_value = $(this).parent().next().html();
    //    $(this).parent().next().html("<input class='form-control cate_ipt_edit' id='" + $mee.attr('id') + "' value='" + $(this).parent().next().html() + "'>");
    //    $('.cate_ipt_edit').change(function () {
    //        var meee = $(this);
    //        var txtcate = $(this).val();
    //        var txticon = $(this).val();
    //        if (txtcate !== '' && txtcate !== old_value) {
    //
    //            var request = $.ajax({
    //                url: base_url + 'cate/ajax_edit/' + $mee.attr('id'),
    //                method: 'POST',
    //                data: 'txtcate=' + txtcate + '&txticon='+txticon,
    //                dataType: 'json'
    //            });
    //            request.done(function (response) {
    //                if (response.success) {
    //                    alert(response.success);
    //                    $mee.parent().next().html(txtcate);
    //                } else {
    //                    alert(response.fail);
    //                }
    //            });
    //            request.fail(function (error) {
    //                alert("Somethings wrong :( -- " + error.status + ' ' + error.statusText);
    //            });
    //        }
    //    });
    //    return false;
    //});
})