function success(title, msg) {
    $.growl({
        title: title,
        message: msg
    });
}

function warning(title, msg) {
    $.growl.warning({
        title: title,
        message: msg
    });
}

function error(title, msg) {
    $.growl.error({
        title: title,
        message: msg
    });
}