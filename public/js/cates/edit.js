/**
 * Created by root on 14/05/2016.
 */
$(document).ready(function(){
    $(':input[name=txticon]').keyup(function(){
        icon = $(this).val();
        $("#icon_preview").html("<i class='fa "+icon+" fa-2x'></i>");
    });
})