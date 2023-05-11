function isNotEmpty(str) {
    if (str == null) {
        return false;
    }
    return str.length >= 0 && str !== '' && str !== '  ';
}