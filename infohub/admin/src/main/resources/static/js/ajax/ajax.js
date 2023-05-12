function get(url, data, successCallback) {
    $.ajax({
        url: url,
        type: 'GET',
        data: data,
        success: successCallback,
        headers: {
            'X-Api-Request': 'false'
        }
    });
}

function post(url, data, successCallback) {
    $.ajax({
        url: url,
        type: 'POST',
        data: JSON.stringify(data),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        success: successCallback,
        headers: {
            'X-Api-Request': 'false'
        }
    });
}

function put(url, data, successCallback) {
    $.ajax({
        url: url,
        type: 'PUT',
        data: JSON.stringify(data),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        success: successCallback,
        headers: {
            'X-Api-Request': 'false'
        }
    });
}

function remove(url, data, successCallback) {
    $.ajax({
        url: url,
        type: 'DELETE',
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        success: successCallback,
        headers: {
            'X-Api-Request': 'false'
        }
    });
}