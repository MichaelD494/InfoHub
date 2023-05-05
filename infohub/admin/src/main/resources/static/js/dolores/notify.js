function success(title, message) {
    $.growl({
        title: title,
        message: message
    })
}

function warning(title, message) {
    console.log(message);
    $.growl.warning({
        title: title,
        message: message
    })
}

function error(title, message) {
    $.growl.error({
        title: title,
        message: message
    })
}