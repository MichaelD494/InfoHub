function verify(callback) {
    $.ajax({
        url: "/verify",
        type: 'GET',
        async: false,
        success: function (resp) {
            let obj = {};
            obj.code = resp.code;
            obj.msg = resp.msg;
            callback(obj);
        }
    });
}