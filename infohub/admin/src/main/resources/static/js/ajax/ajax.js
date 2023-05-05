const sign = "Bearer ";

function get(url, data, successCallback, accessToken) {
    $.ajax({
        url: url,
        type: 'GET',
        data: data,
        headers: {
            "Authorization": accessToken != null ? sign + accessToken : null
        },
        success: successCallback
    });
}

function post(url, data, successCallback, accessToken) {
    $.ajax({
        url: url,
        type: 'POST',
        data: JSON.stringify(data),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        headers: {
            "Authorization": accessToken != null ? sign + accessToken : null
        },
        success: successCallback
    });
}

function put(url, data, successCallback, accessToken) {
    $.ajax({
        url: url,
        type: 'PUT',
        data: JSON.stringify(data),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        headers: {
            "Authorization": accessToken != null ? sign + accessToken : null
        },
        success: successCallback
    });
}

function remove(url, data, successCallback, accessToken) {
    $.ajax({
        url: url,
        type: 'DELETE',
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        headers: {
            "Authorization": accessToken != null ? sign + accessToken : null
        },
        success: successCallback
    });
}