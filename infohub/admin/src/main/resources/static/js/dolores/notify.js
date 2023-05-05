function success(title, msg) {
    $.growl({
        title: title,
        msg: msg
    })
}

function warning(title, msg) {
    $.growl.warning({
        title: title,
        msg: msg
    })
}

function error(title, msg) {
    $.growl.error({
        title: title,
        msg: msg
    })
}