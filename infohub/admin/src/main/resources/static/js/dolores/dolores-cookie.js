function getCookieValue(cookieName) {
    const cookies = document.cookie.split("; ");
    for (let i = 0; i < cookies.length; i++) {
        const cookie = cookies[i].split("=");
        if (cookie[0] === cookieName) {
            return cookie[1];
        }
    }
    return null;
}

function setCookie(cookieName, cookieValue, expiresTime, path) {
    document.cookie = cookieName + "=" + cookieValue + "; expires=" + expiresTime + "; path=" + path;
}