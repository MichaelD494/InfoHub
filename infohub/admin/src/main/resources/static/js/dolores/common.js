//延迟跳转页面
function delayJump(pageUri) {
    setTimeout(function () {
        window.location.href = pageUri;
    }, 1000)
}

//初始化对象
function initObj(obj) {
    Object.keys(obj).forEach(key => (obj[key] = ''));
}

//重写对象
function rewriteObj(obj, targetObj) {
    for (const [key, value] of Object.entries(obj)) {
        if (key === 'tableId') {
            targetObj[key] = 'dolores-table-' + value;
        } else {
            targetObj[key] = value;
        }
    }
}

function buildQueryParam(formData) {
    let queryParam = '?';
    for (const [key, value] of formData.entries()) {
        queryParam += key + '=' + value + '&'
    }
    return queryParam;
}

function buildQueryObj(formData) {
    let queryObj = {};
    //每个键值对(key-value pair)被称为一个pair
    for (const pair of formData.entries()) {
        queryObj[pair[0]] = pair[1];
    }
    return queryObj;
}