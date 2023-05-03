const contextPath = '/infohub';

function get(url, data, successCallback, accessToken) {
    $.ajax({
        url: contextPath + url,
        type: 'GET',
        data: data,
        headers: {
            "Authorization": accessToken
        },
        success: successCallback
    });
}

function post(url, data, successCallback, accessToken) {
    $.ajax({
        url: contextPath + url,
        type: 'POST',
        data: JSON.stringify(data),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        headers: {
            "Authorization": accessToken
        },
        success: successCallback
    });
}

function put(url, data, successCallback, accessToken) {
    $.ajax({
        url: contextPath + url,
        type: 'PUT',
        data: JSON.stringify(data),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        headers: {
            "Authorization": accessToken
        },
        success: successCallback
    });
}

function remove(url, data, successCallback, accessToken) {
    $.ajax({
        url: contextPath + url,
        type: 'DELETE',
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        headers: {
            "Authorization": accessToken
        },
        success: successCallback
    });
}