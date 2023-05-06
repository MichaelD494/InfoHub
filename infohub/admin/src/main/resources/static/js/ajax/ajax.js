function get(url, data) {
    $.ajax({
        url: url,
        type: 'GET',
        data: data
    });
}

function post(url, data) {

    $.ajax({
        url: url,
        type: 'POST',
        data: JSON.stringify(data),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8"
    });
}

function put(url, data) {
    $.ajax({
        url: url,
        type: 'PUT',
        data: JSON.stringify(data),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8"
    });
}

function remove(url, data) {
    $.ajax({
        url: url,
        type: 'DELETE',
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8"
    });
}