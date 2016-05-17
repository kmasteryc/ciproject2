

$(document).ready(function () {
    $(".btn_add_item").click(function () {
        //if ($(this).find("h4").length != '') {
        //    wanted = 'h4'
        //} else {
        //    wanted = 'button'
        //}
        var product_name = $(this).data('productName');
        var product_id = $(this).data('productId');
        var product_price = $(this).data('productPrice');

        var request = $.ajax({
            url: base_url + 'cart/add_item/',
            method: "POST",
            data: 'product_id=' + product_id + '&product_name=' + product_name + '&product_price=' + product_price
            //dataType: 'json'
        });
        request.done(function (response) {
            //alert(response);
            $("#add_item_dialog").modal();
        });
        request.fail(function (error) {

        })
        return false;
    });


    $(".product_box").each(function(){
        //$(this).height("500px");
    });
});


$(document).on('click', "#btn_comment", function () {


    $("#comment_status").html('');
    txtguest = $(":text[name=txtguest]").val();
    intparent = $(":input[name=intparent]").val();
    txtcontent = $("#txtcontent").val();
    recaptcha = $("#g-recaptcha-response").val();

    var request = $.ajax({
        url: base_url + 'comment/create/' + product_id,
        method: "POST",
        data: 'intparent='+intparent+'&intproduct=' + product_id + '&txtguest=' + txtguest + '&txtcontent=' + txtcontent + '&g-recaptcha-response=' + recaptcha,
        dataType: 'json'
    });

    $('#ajax_comment').html('<div style="text-align: center; margin:10px"><img id="loader-img" alt="" src="'+base_url+'public/img/loading2.gif" /></div>');

    request.done(function (response) {
        $("#comment_status").html(response.message);

        $.ajax({
            type: "GET",
            url: base_url + 'comment/create/' + product_id,
            success: function (response) {
                setTimeout(function () {
                    $('#comment_box').html(response);
                    $("#ajax_comment").load(base_url + 'comment/show_comment/'+ product_id );
                }, 500);
                //$("html, body").delay(500).animate({scrollTop: $('#comment_box').offset().top }, 1500);
            }
        });
    });
    request.fail(function (error) {
        $("#comment_status").html(error.statusText);
        //$("#comment_box").load(base_url + 'comment/create/' + product_id);
    })

    $("#comment_status").show();

});

$(document).on('click', ".li_link", function () {
    var url = $(this).find("[href]").attr('href');
    $('#ajax_comment').html('<div style="text-align: center; margin:10px"><img id="loader-img" alt="" src="'+base_url+'public/img/loading2.gif" /></div>');
    $.ajax({
        type: "GET",
        url: url,
        success: function (response) {
            setTimeout(function () {
                $('#ajax_comment').html(response);
            }, 1000);
            //$("html, body").delay(500).animate({scrollTop: $('#comment_section').offset().top }, 1500);
        }
    });
    //$("#ajax_comment").load(url);
    return false;
});

$(document).on('click', ".btn_comment_del", function () {
    if (areyousure('Process?') === true) {
        var cid = $(this).data('cid');
        if (cid) {
            $('#ajax_comment').html('<div style="text-align: center; margin:10px"><img id="loader-img" alt="" src="'+base_url+'public/img/loading2.gif" /></div>');

            $.get(base_url + 'comment/ajax_delete/' + cid);

            $.ajax({
                type: "GET",
                url: base_url + 'comment/show_comment/' + product_id,
                success: function (response) {
                    setTimeout(function () {
                        $('#ajax_comment').html(response);
                    }, 1000);
                    $("html, body").delay(500).animate({scrollTop: $('#comment_section').offset().top }, 1500);
                }
            });

        }
    }
    return false;
});
$(document).on('click', ".btn_comment_rep", function () {
    $('#comment_form').show();

    var rep_user = $(this).parents(".comment-body").find(".info_comment_user").html();
    var rep_content = $(this).parent().siblings(".info_comment_content").html();

    $(":input[name=intparent]").val($(this).data('cid'));
    //$('#rep_user').html(rep_user);
    $('#rep_content').html(rep_content);
    $('#reply_to').show();

});
$(document).on('click', ".lnk_show_reply", function () {
    $(this).parent().siblings(".list_reply").fadeToggle();
    return false;
});
$(document).on('click', "#open_comment_box", function () {
    $('#comment_form').slideToggle();
    return false;
});

$(document).on('click', "#btn_reply_close", function () {
    //$(this).parent().parent().hide(500)
    $("#reply_to").hide(500);
    $(":input[name=intparent]").val('');
    return false;
});


//////////////////////// CART EVENT

$(document).on('click', ".btn_show_cart", function () {
    $(".modal").hide();
    $("#show_cart_body").load(base_url + 'cart/show_cart');
    $("#show_cart_dialog").modal();
});
$(document).on('click', ".btn_check_out", function () {
    $(".modal").hide();
    $("#show_check_body").load(base_url + 'cart/check_out');
    $("#show_check_out").modal();
});
$(document).on('click', ".btn_update_cart", function () {
    $data = $("#show_cart_form").serialize();
    console.log($data);
    var request = $.ajax({
        url: base_url + 'cart/show_cart/',
        method: "POST",
        data: $data,
        async: false,
        success: function (response) {
            $("#show_cart_body").html(response);
        }
    });
    return false;
});
$(document).on('click', ".btn_reset_cart", function () {
    var request = $.ajax({
        url: base_url + 'cart/reset_cart/',
        method: "GET",
        async: true,
        success: function (response) {
            $("#show_cart_body").html(response);
        }
    });
    return false;
});
$(document).on('click',"#lnk_show_prod_info",function () {
    $("#show_info_dialog").modal();
});
$(document).on('click',"#toggle_search",function () {
    $("#sidebar_search").toggleClass("hidden-xs hidden-sm");
});
