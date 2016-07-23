/* global base_url, cate_menu */

function areyousure(question) {
    question = question || 'Are you sure?';
    return window.confirm(question);
}

$(document).ready(function () {
    $root = $(this);

    if ($(".datatable").length) {
        $(".datatable").dynatable();
    }


    //    ******************  JS FOR IMAGE CONTROLLER ******************
    $("#image_btn_add").click(function () {
        $("#filearea").append($(".filebox").clone());
    });

    if ($("#lightSlider").length) {
        $("#lightSlider").lightSlider({item: 2});
    }
    if ($("#txt_nav_search").length) {
        $("#txt_nav_search").focus(function(){
            $("#txt_nav_search").trigger('keyup');
        });
        $("#txt_nav_search").keyup(function(){

            if ($("#txt_nav_search").val() != ''){

                $('#ajax_search_box').html('<div><img class="ajax-icon" src="'+base_url+'public/img/loading.gif" /></div>');

                $("#ajax_search_box").show();

                $.ajax({
                    type: "GET",
                    url: base_url+'product/search_ajax?txtsearch='+$("#txt_nav_search").val(),
                    success: function (rresponse) {
                        setTimeout(function () {
                            $('#ajax_search_box').html(rresponse);
                        }, 300);
                    }
                });
            }
            return false;
        });

        $("#nav_search, #txt_nav_search").click(function(){
            $("#navbar").collapse('hide');
        });

        $("#ajax_search_box").mouseleave(function(){
           $(this).hide();
        });
    }

    //if ($("#nav_search").length) {
    //    $("#nav_search").click(function(){
    //        myleft = $(".navbar-form").css('paddingLeft');
    //        mywidth = $(".navbar-form").css('width');
    //
    //        $("#ajax_search_box").css('left',myleft);
    //        $("#ajax_search_box").css('width',mywidth);
    //
    //        if ($("#txt_nav_search").val() != ''){
    //
    //            $('#ajax_search_box').html('<div><img style="left: 30%; position: relative" id="loader-img" alt="" src="'+base_url+'public/img/loading.gif" /></div>');
    //
    //            $("#ajax_search_box").show();
    //
    //            $.ajax({
    //                type: "GET",
    //                url: base_url+'product/search_ajax?txtsearch='+$("#txt_nav_search").val(),
    //                success: function (rresponse) {
    //                    setTimeout(function () {
    //                        $('#ajax_search_box').html(rresponse);
    //                    }, 1000);
    //                }
    //            });
    //        }
    //        return false;
    //    })
    //}
    $("#show_menu_admin").click(function(){
        $("#menu_admin").toggleClass('hidden-xs');
        return false;
    })


});
