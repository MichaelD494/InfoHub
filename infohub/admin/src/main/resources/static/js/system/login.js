function getCaptcha() {
    $.ajax({
        url: captchaUrl,
        type: 'GET',
        success: function (resp) {
            if (resp.code === 200) {
                loginObj.uuid = resp.uuid;
                $("[name='code']").val('');
                $("#captcha").attr("src", resp.img);
            } else {
                warning("提示", resp.msg);
            }
        }
    });
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
    $.ajax({
        url: loginUrl,
        type: 'POST',
        data: JSON.stringify(loginObj),
        dataType: 'JSON',
        contentType: "application/json; charset=utf-8",
        success: function (resp) {
            if (resp.code === 200) {
                success('提示', resp.msg);
                delayJump(homePage);
            } else {
                warning('提示', resp.msg);
                getCaptcha();
            }
        }
    });
}