$(document).ready(function(){
    $('#slc_action').change(function () {
        var check = [];
        $("input:checked").each(function () {
            check.push($(this).val());
        });
        if (check.length === 0) {
            alert('Pls check the box what you wanna process!');
        } else {
            var ok = areyousure();
            if (ok === true) {
                if ($(this).val() === 'del') {
                    var request = $.ajax({
                        url: base_url + 'user/ajax_delete',
                        data: "json=" + JSON.stringify(check),
                        type: 'POST',
                        dataType: 'json',
                        async: true
                    });
                    request.done(function (response) {
                        $("input:checked").each(function () {
                            $(this).parent().parent().hide(1500, "linear");
                        });
                    });
                    request.fail(function (error) {
                        alert("Somethings wrong :( -- " + error.status + ' ' + error.statusText);
                    });
                }

                if ($(this).val() === 'edit') {
                    args = check.toString();
                    arg = args.replace(/,/g, '/');
                    window.location.href = base_url + 'user/edit/' + arg;
                }
                $("#slc_action_0").attr('selected', 'selected');
            }
        }
    });
})
