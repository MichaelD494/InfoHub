function get(url, data) {
    $.ajax({
        url: url,
        type: 'GET',
        data: data,
        success: function (response) {
            console.log(response)
        }
    });
}

function post(url, data) {
    $.ajax({
        url: url,
        type: 'POST',
        data: JSON.stringify(data),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        success: function (response) {
            console.log(response)
        }
    });
}

function put(url, data) {
    $.ajax({
        url: url,
        type: 'PUT',
        data: JSON.stringify(data),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        success: function (response) {
            console.log(response)
        }
    });
}

function remove(url, data) {
    $.ajax({
        url: url,
        type: 'DELETE',
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        success: function (response) {
            console.log(response)
        }
    });
}