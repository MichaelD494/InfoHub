function getCaptcha() {
    get(captchaUrl, null, function (resp) {
        loginObj.uuid = resp.uuid;
        $("[name='code']").val('');
        $("#captcha").attr("src", resp.img);
    })
}

function login() {
    const username = $("[name='username']").val();
    if (!isNotEmpty(username)) {
        warning("提示", "请输入用户名");
        return;
    }
    loginObj.username = username;
    const password = $("[name='password']").val();
    if (!isNotEmpty(password)) {
        warning("提示", "请输入密码");
        return;
    }
    loginObj.password = password;
    const code = $("[name='code']").val();
    if (!isNotEmpty(code)) {
        warning("提示", "请输入验证码");
        return;
    }
    loginObj.code = code;
    post(loginUrl, loginObj, function (resp) {
        success('提示', resp.msg);
        if (resp.code === 200) {
            delayJump(homePage);
        } else {
            getCaptcha();
        }
    });
}