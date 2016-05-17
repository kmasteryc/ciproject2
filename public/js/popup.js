/**
 * Created by Administrator on 5/4/2016.
 */
$(document).ready(function () {
    //parent = window.opener.document;
    jparent = window.opener;

    $("#toggle_all").click(function(){
        $(":checkbox").each(function() {
            if ($(this).attr('checked')){
                $(this).removeAttr('checked');
            }
            else
            {
                $(this).attr("checked",'checked');
            }
        })
        return false;
    });

    str_hidespeckey = jparent.$('#hidespeckey').val();
    str_hidespecvalue = jparent.$('#hidespecvalue').val();
    hidespeckey = str_hidespeckey.split(',');
    hidespecvalue = str_hidespecvalue.split(',');

    $(":checkbox").each(function () {
        if (hidespeckey.indexOf($(this).attr('id')) > -1) {
            $(this).attr('checked', 'checked');
            perfectid = hidespeckey.indexOf($(this).attr('id'));
            $(this).parent().next().next().find('.preset_option').each(function () {
                if (($(this).val()) == hidespecvalue[perfectid]) {
                    $(this).attr('selected', 'selected');
                    return false;
                }
            });
        }
    });

    $("#done").click(function () {
        shitreturn = '';
        shitkey = [];
        shitvalue = [];
        $("input:checked").each(function () {
            if ($(this).parent().next().next().next().next().find(":text").val() == '') {
                value = $(this).parent().next().next().find(":selected").html();
                shitkey.push($(this).attr('id'));
                shitvalue.push(value);
            } else {
                value = $(this).parent().next().next().next().next().find(":text").val();
                shitkey.push($(this).attr('id'));
                shitvalue.push(value);
            }

            shitreturn += '<tr><td>' + $(this).val() + '</td><td>' + value + '</td><td>' + $(this).parent().next().next().next().html() + '</td></tr>';
        });
        jparent.$('#detailtable').html(shitreturn);
        jparent.$('#hidespeckey').val(shitkey);
        jparent.$('#hidespecvalue').val(shitvalue);

    });
    $("#close").click(function () {
        window.close();
    });
})