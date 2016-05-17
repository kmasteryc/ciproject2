$(document).ready(function() {

    var Arrays=new Array();
    $('td.options a').click(function(){

        var thisID = $(this).attr('id');

        var itemname = document.getElementsByClassName('name-'+thisID)[0].innerHTML;
        var itemprice = document.getElementsByClassName('price-'+thisID)[0].innerHTML;
        alert(itemname);
        if(include(Arrays,thisID))
        {
            var price = $('#each-'+thisID).children(".shopp-price").find('em').html();
            var quantity = $('#each-'+thisID).children(".shopp-quantity").html();
            quantity = parseFloat(quantity)+parseFloat(1);

            var total1 = parseFloat(itemprice)*parseFloat(quantity);
            var total = total1.toPrecision(3); // returns 5.6
            $('#each-'+thisID).children(".shopp-price").find('em').html(total);
            $('#each-'+thisID).children(".shopp-quantity").html(quantity);

            var prev_charges = $('.cart-total span').html();
            prev_charges = parseFloat(prev_charges)-parseFloat(price);

            prev_charges = parseFloat(prev_charges)+parseFloat(total);
            $('.cart-total span').html(prev_charges);

            $('#total-hidden-charges').val(prev_charges);


            prev_charges_total = prev_charges + parseFloat(10);
            $('.total span').html(prev_charges_total);

            $('#total-hidden-charges2').val(prev_charges_total);

        }
        else{
            Arrays.push(thisID);

            var prev_charges = $('.cart-total span').html();

            prev_charges1 = parseFloat(prev_charges)+parseFloat(itemprice);
            var prev_charges = prev_charges1.toPrecision(3);
            $('.cart-total span').html(prev_charges);
            $('#total-hidden-charges').val(prev_charges);
            $('#mycart').append('<tr><td id="each-'+thisID+'"><a href="#0" class="remove_item "><i class="icon_minus_alt"></i></a> <strong class="shopp-quantity">1&nbsp;&nbsp;</strong>' +itemname+'<div class="pull-right shopp-price"> $<em>'+itemprice+'</em></div></td></tr>');

            $('#mycart').append('<input id="name-'+ thisID +'" value= "' +itemname+'" name="name-'+ thisID +'">');
            $('#mycart').append('<input id="price-'+ thisID +'" value= "' +itemprice+'" name="price-'+ thisID +'">');


            prev_charges3 = prev_charges1 + parseFloat(10);
            var prev_charges_total = prev_charges3.toPrecision(3);
            $('.total span').html(prev_charges_total);
            $('#total-hidden-charges2').val(prev_charges_total);

            $('#cart').css({'-webkit-transform' : 'rotate(20deg)','-moz-transform' : 'rotate(20deg)' });
        }


    });
    $('.remove_item').livequery('click', function() {

        var deduct = $(this).parent().children(".shopp-price").find('em').html();
        var prev_charges = $('.cart-total span').html();

        var thisID = $(this).parent().attr('id').replace('each-','');

        var pos = getpos(Arrays,thisID);
        Arrays.splice(pos,1,"0")

        prev_charges2 = parseFloat(prev_charges)-parseFloat(deduct);
        var prev_charges = prev_charges2.toPrecision(3);
        $('.cart-total span').html(prev_charges);
        $('#total-hidden-charges').val(prev_charges);
        if(prev_charges2 > parseFloat(0)){
            prev_charges3 = prev_charges2 + parseFloat(10);
        }else{prev_charges3 = parseFloat(0);}
        var prev_charges1 = prev_charges3.toPrecision(3);
        $('.cart-total2 span').html(prev_charges1);
        $('#total-hidden-charges2').val(prev_charges1);

        $(this).parent().remove();

    });

});


function include(arr, obj) {
    for(var i=0; i<arr.length; i++) {
        if (arr == obj) return true;
    }
}
function getpos(arr, obj) {
    for(var i=0; i<arr.length; i++) {
        if (arr == obj) return i;
    }
}/**
 * Created by root on 12/05/2016.
 */
