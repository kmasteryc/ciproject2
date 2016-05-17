$(document).ready(function(){
    if ($(".datepicker").length) {
        $(".datepicker").datepicker({
            dateFormat: "yy-mm-dd",
            firstDay: 1
        });
    };
    $(document).on('click',".btn_gift_choose",function(){

        $(this).parent().parent().toggleClass('bg-danger');

        product = $(":input[name='txtproducts']");

        cur_val= product.val();

        id = $(this).data('id');

        if ($(this).parent().parent().hasClass('bg-danger'))
        {

            $(this).html('Break up');

            product.val(cur_val+id+";");

        }

        else

        {
            $(this).html('Love me');

            new_val = cur_val.replace(id+';','');

            product.val(new_val);

        }



        return false;
    })
})
