function isNotEmpty(str) {
    if (str == null) {
        return false;
    }
    return str.length >= 0 && str !== '' && str !== '  ';
}

function setFormData(obj, isNotNullFlag) {
    let res = typeof obj;
    let formData = new FormData();
    if (res === 'object' && obj !== null) {
        if (isNotNullFlag) {
            for (let key in obj) {
                if (isNotEmpty(obj[key])) {
                    formData.append(key, obj[key]);
                }
            }
        } else {
            for (let key in obj) {
                formData.append(key, obj[key]);
            }
        }
        return formData;
    }
    return null;
}

function parseDate(datetime) {
    const date = new Date(datetime);
    let year = date.getFullYear();
    let month = ('0' + (date.getMonth() + 1)).slice(-2);
    let day = ('0' + date.getDate()).slice(-2);
    return year + '-' + month + '-' + day;
}