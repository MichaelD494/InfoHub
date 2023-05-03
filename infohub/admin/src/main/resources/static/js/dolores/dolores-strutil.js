function isNotEmpty(str) {
    str = str.trim();
    if (str != null && str !== '' && str !== ' ') {
        return true;
    }
    return false;
}